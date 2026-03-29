import 'dart:io';

void main(List<String> args) async {
  final parsed = _parseArgs(args);
  if (parsed == null) return;

  final options = parsed;
  final targetDir = Directory(options.targetPath);

  if (await targetDir.exists()) {
    final entries = await targetDir.list().take(1).toList();
    if (entries.isNotEmpty) {
      stderr.writeln('Target directory is not empty: ${targetDir.path}');
      exitCode = 1;
      return;
    }
  } else {
    await targetDir.create(recursive: true);
  }

  final flutterCreateArgs = <String>[
    'create',
    '--no-pub',
    '--project-name',
    options.projectName,
    '--org',
    options.org,
    '--platforms',
    options.platforms.join(','),
    targetDir.path,
  ];

  stdout.writeln('Creating Flutter app in ${targetDir.path}...');
  final createExitCode = await _runCommand(
    executable: 'flutter',
    arguments: flutterCreateArgs,
    workingDirectory: Directory.current.path,
  );

  if (createExitCode != 0) {
    stderr.writeln('flutter create failed.');
    exitCode = createExitCode;
    return;
  }

  await _writeStarterFiles(options, targetDir);
  await _updatePlatformAppNames(options, targetDir);

  if (options.localize) {
    stdout.writeln('Generating locale JSON files...');
    final localizationExitCode = await _runCommand(
      executable: 'dart',
      arguments: ['scripts/generate_i18n.dart'],
      workingDirectory: targetDir.path,
    );

    if (localizationExitCode != 0) {
      stderr.writeln(
        'Localization generation failed. The project was created, but generated locale files may be missing.',
      );
    }
  }

  if (!options.skipPubGet) {
    stdout.writeln('Running flutter pub get...');
    final pubGetExitCode = await _runCommand(
      executable: 'flutter',
      arguments: ['pub', 'get'],
      workingDirectory: targetDir.path,
    );

    if (pubGetExitCode != 0) {
      stderr.writeln(
        'flutter pub get failed. The project files were created successfully, but dependencies still need to be fetched.',
      );
    }
  }

  stdout.writeln('Formatting generated Dart files...');
  final formatTargets = <String>['lib'];
  if (options.localize) {
    formatTargets.add('scripts');
  }

  await _runCommand(
    executable: 'dart',
    arguments: ['format', ...formatTargets],
    workingDirectory: targetDir.path,
  );

  stdout.writeln('');
  stdout.writeln('Done.');
  stdout.writeln('Project: ${targetDir.path}');
  stdout.writeln('App title: ${options.appTitle}');
  stdout.writeln('Bundle ID: ${options.bundleId}');
  stdout.writeln('State management: ${options.stateManagement}');
  stdout.writeln('Router: ${options.router}');
  stdout.writeln('Localization: ${options.localize ? 'enabled' : 'disabled'}');
  if (options.skipPubGet) {
    stdout.writeln('Next step: run `flutter pub get` inside the new project.');
  } else {
    stdout.writeln('Next step: run `flutter run` inside the new project.');
  }
}

ScaffoldOptions? _parseArgs(List<String> args) {
  if (args.isEmpty || args.contains('--help') || args.contains('-h')) {
    _printUsage();
    return null;
  }

  String? targetPath;
  var stateManagement = 'riverpod';
  var router = 'go';
  var localize = true;
  var org = 'com.example';
  var appTitle = 'Toolkit Starter';
  String? bundleId;
  var skipPubGet = false;
  var platforms = <String>['android', 'ios', 'web'];

  try {
    for (var i = 0; i < args.length; i++) {
      final arg = args[i];
      if (!arg.startsWith('--') && targetPath == null) {
        targetPath = arg;
        continue;
      }

      switch (arg) {
        case '--state-management':
        case '--state':
          stateManagement = _valueAfter(args, ++i, arg);
          break;
        case '--router':
          router = _valueAfter(args, ++i, arg);
          break;
        case '--org':
          org = _valueAfter(args, ++i, arg);
          break;
        case '--app-title':
          appTitle = _valueAfter(args, ++i, arg);
          break;
        case '--bundle-id':
          bundleId = _valueAfter(args, ++i, arg);
          break;
        case '--platforms':
          platforms = _valueAfter(args, ++i, arg)
              .split(',')
              .map((value) => value.trim())
              .where((value) => value.isNotEmpty)
              .toList();
          break;
        case '--localize':
          localize = true;
          break;
        case '--no-localize':
          localize = false;
          break;
        case '--skip-pub-get':
          skipPubGet = true;
          break;
        default:
          stderr.writeln('Unknown argument: $arg');
          _printUsage();
          exitCode = 1;
          return null;
      }
    }
  } on FormatException catch (error) {
    stderr.writeln(error.message);
    _printUsage();
    exitCode = 1;
    return null;
  }

  if (targetPath == null) {
    stderr.writeln('Missing target path.');
    _printUsage();
    exitCode = 1;
    return null;
  }

  const allowedStateManagement = {'riverpod', 'provider', 'none'};
  if (!allowedStateManagement.contains(stateManagement)) {
    stderr.writeln(
      'Invalid state management: $stateManagement. Use riverpod, provider, or none.',
    );
    exitCode = 1;
    return null;
  }

  const allowedRouters = {'go', 'navigator'};
  if (!allowedRouters.contains(router)) {
    stderr.writeln('Invalid router: $router. Use go or navigator.');
    exitCode = 1;
    return null;
  }

  const allowedPlatforms = {
    'android',
    'ios',
    'web',
    'linux',
    'macos',
    'windows',
  };
  if (platforms.isEmpty ||
      platforms.any((value) => !allowedPlatforms.contains(value))) {
    stderr.writeln(
      'Invalid platforms: ${platforms.join(', ')}. Use a comma-separated list of android, ios, web, linux, macos, or windows.',
    );
    exitCode = 1;
    return null;
  }

  final projectName = bundleId != null
      ? _projectNameFromBundleId(bundleId)
      : _normalizeProjectName(targetPath);
  final resolvedOrg = bundleId != null ? _orgFromBundleId(bundleId) : org;

  return ScaffoldOptions(
    targetPath: targetPath,
    projectName: projectName,
    stateManagement: stateManagement,
    router: router,
    localize: localize,
    org: resolvedOrg,
    appTitle: appTitle,
    bundleId: '$resolvedOrg.$projectName',
    skipPubGet: skipPubGet,
    platforms: platforms,
  );
}

String _valueAfter(List<String> args, int index, String flag) {
  if (index >= args.length || args[index].startsWith('--')) {
    throw FormatException('Missing value for $flag');
  }
  return args[index];
}

Future<void> _writeStarterFiles(
  ScaffoldOptions options,
  Directory targetDir,
) async {
  await _writeFile(targetDir, 'pubspec.yaml', _buildPubspec(options));

  await _writeFile(targetDir, 'lib/main.dart', _buildMainDart(options));
  await _writeFile(targetDir, 'lib/app/bootstrap.dart', _buildBootstrapDart());
  await _writeFile(targetDir, 'lib/app/app.dart', _buildAppDart(options));
  await _writeFile(
    targetDir,
    'lib/app/theme/app_theme.dart',
    _buildAppThemeDart(),
  );
  await _writeFile(
    targetDir,
    'lib/features/home/presentation/pages/home_page.dart',
    _buildHomePageDart(options),
  );

  if (options.router == 'go') {
    await _writeFile(
      targetDir,
      'lib/app/router/app_router.dart',
      _buildGoRouterDart(),
    );
  }

  if (options.localize) {
    await _writeFile(
      targetDir,
      'lib/app/l10n/localization.dart',
      _buildLocalizationConfigDart(),
    );
    await _writeFile(
      targetDir,
      'assets/i18n/translations.csv',
      _buildTranslationsCsv(options.appTitle),
    );
    await _writeFile(
      targetDir,
      'scripts/generate_i18n.dart',
      _buildGenerateI18nDart(),
    );
  }
}

Future<void> _updatePlatformAppNames(
  ScaffoldOptions options,
  Directory targetDir,
) async {
  await _updateAndroidAppName(options, targetDir);
  await _updateIosAppName(options, targetDir);
}

Future<void> _updateAndroidAppName(
  ScaffoldOptions options,
  Directory targetDir,
) async {
  final manifestFile = File(
    '${targetDir.path}/android/app/src/main/AndroidManifest.xml',
  );
  if (!await manifestFile.exists()) return;

  final original = await manifestFile.readAsString();
  final updated = original.replaceFirst(
    RegExp(r'android:label="[^"]*"'),
    'android:label="${_escapeXmlAttribute(options.appTitle)}"',
  );

  if (updated != original) {
    await manifestFile.writeAsString(updated);
  }
}

Future<void> _updateIosAppName(
  ScaffoldOptions options,
  Directory targetDir,
) async {
  final infoPlistFile = File('${targetDir.path}/ios/Runner/Info.plist');
  if (!await infoPlistFile.exists()) return;

  final displayName = _escapeXmlText(options.appTitle);
  final bundleName = _escapeXmlText(_iosBundleName(options.appTitle));

  var content = await infoPlistFile.readAsString();
  content = _replacePlistStringValue(
    content,
    'CFBundleDisplayName',
    displayName,
  );
  content = _replacePlistStringValue(content, 'CFBundleName', bundleName);
  await infoPlistFile.writeAsString(content);
}

Future<void> _writeFile(
  Directory root,
  String relativePath,
  String content,
) async {
  final file = File('${root.path}/$relativePath');
  await file.parent.create(recursive: true);
  await file.writeAsString(content);
}

Future<int> _runCommand({
  required String executable,
  required List<String> arguments,
  required String workingDirectory,
}) async {
  final process = await Process.start(
    executable,
    arguments,
    workingDirectory: workingDirectory,
    mode: ProcessStartMode.inheritStdio,
  );
  return process.exitCode;
}

void _printUsage() {
  stdout.writeln('''
Usage:
  dart run scripts/create_flutter_app.dart <target_path> [options]

Options:
  --state-management, --state <riverpod|provider|none>
      Default: riverpod
  --router <go|navigator>
      Default: go
  --localize
      Enable localization scaffolding. Default: enabled
  --no-localize
      Disable localization scaffolding
  --org <reverse.domain>
      Default: com.example
  --app-title <title>
      Default: Toolkit Starter
  --bundle-id <reverse.domain.app_name>
      Example: com.example.my_app
  --platforms <comma,separated,list>
      Default: android,ios,web
  --skip-pub-get
      Skip flutter pub get after scaffolding
  --help, -h
      Show this help

Examples:
  dart run scripts/create_flutter_app.dart my_app
  dart run scripts/create_flutter_app.dart my_app --app-title "Acme Tasks" --bundle-id com.acme.tasks
  dart run scripts/create_flutter_app.dart my_app --state provider --router navigator
  dart run scripts/create_flutter_app.dart my_app --no-localize --platforms android,ios
''');
}

String _normalizeProjectName(String targetPath) {
  final trimmedPath = targetPath.replaceAll(RegExp(r'[\\/]+$'), '');
  final basename = trimmedPath.split(RegExp(r'[\\/]')).last;
  final normalized = basename
      .toLowerCase()
      .replaceAll(RegExp(r'[^a-z0-9_]'), '_')
      .replaceAll(RegExp(r'_+'), '_')
      .replaceAll(RegExp(r'^[^a-z]+'), '');

  return normalized.isEmpty ? 'toolkit_starter' : normalized;
}

String _iosBundleName(String appTitle) {
  final normalized = appTitle
      .trim()
      .replaceAll(RegExp(r'\s+'), ' ')
      .replaceAll(RegExp(r'[^A-Za-z0-9 ]'), '')
      .replaceAll(' ', '');

  return normalized.isEmpty ? 'App' : normalized;
}

String _replacePlistStringValue(String content, String key, String value) {
  final pattern = RegExp(
    '(<key>$key</key>\\s*<string>)(.*?)(</string>)',
    dotAll: true,
  );
  return content.replaceFirstMapped(pattern, (match) {
    return '${match.group(1)}$value${match.group(3)}';
  });
}

String _projectNameFromBundleId(String bundleId) {
  final segments = bundleId.split('.');
  if (segments.length < 2) {
    throw FormatException(
      '--bundle-id must contain at least one domain segment and one app segment.',
    );
  }

  final projectName = segments.last;
  final validProjectName = RegExp(r'^[a-z][a-z0-9_]*$');
  if (!validProjectName.hasMatch(projectName)) {
    throw FormatException(
      'The last segment of --bundle-id must be a valid Flutter project name using lowercase letters, numbers, and underscores.',
    );
  }

  return projectName;
}

String _orgFromBundleId(String bundleId) {
  final segments = bundleId.split('.');
  if (segments.length < 2) {
    throw FormatException(
      '--bundle-id must contain at least one domain segment and one app segment.',
    );
  }

  final orgSegments = segments.sublist(0, segments.length - 1);
  final validOrgSegment = RegExp(r'^[a-zA-Z][a-zA-Z0-9_]*$');
  if (orgSegments.any((segment) => !validOrgSegment.hasMatch(segment))) {
    throw FormatException(
      'Each domain segment in --bundle-id must start with a letter and contain only letters, numbers, or underscores.',
    );
  }

  return orgSegments.join('.');
}

String _buildPubspec(ScaffoldOptions options) {
  final dependencies = <String>[
    "  flutter:\n    sdk: flutter",
    "  flutter_localizations:\n    sdk: flutter",
    if (options.localize) '  easy_localization: ^3.0.7+1',
    if (options.stateManagement == 'riverpod') '  flutter_riverpod: ^2.6.1',
    if (options.stateManagement == 'provider') '  provider: ^6.1.5',
    if (options.router == 'go') '  go_router: ^16.0.0',
    '  isar: ^3.1.0+1',
    '  isar_flutter_libs: ^3.1.0+1',
  ];

  final assetLines = <String>[
    'flutter:',
    '  uses-material-design: true',
    if (options.localize) '  assets:',
    if (options.localize) '    - assets/i18n/generated/',
  ];

  return '''
name: ${options.projectName}
description: Flutter starter app generated by codex-claude-mobile-toolkit.
publish_to: 'none'
version: 1.0.0+1

environment:
  sdk: ^3.9.0

dependencies:
${dependencies.join('\n')}

dev_dependencies:
  build_runner: ^2.4.13
  flutter_lints: ^5.0.0
  flutter_test:
    sdk: flutter
  isar_generator: ^3.1.0+1

${assetLines.join('\n')}
''';
}

String _buildMainDart(ScaffoldOptions options) {
  final imports = <String>[
    if (options.localize)
      "import 'package:easy_localization/easy_localization.dart';",
    "import 'package:flutter/widgets.dart';",
    if (options.stateManagement == 'riverpod')
      "import 'package:flutter_riverpod/flutter_riverpod.dart';",
    if (options.stateManagement == 'provider')
      "import 'package:provider/provider.dart';",
    '',
    "import 'app/app.dart';",
    "import 'app/bootstrap.dart';",
    if (options.localize) "import 'app/l10n/localization.dart';",
  ];

  final appRoot = _buildAppRootExpression(options);

  return '''
${imports.join('\n')}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
${options.localize ? '  await EasyLocalization.ensureInitialized();' : ''}

  await bootstrap(
    child: $appRoot,
  );
}
''';
}

String _buildAppRootExpression(ScaffoldOptions options) {
  String current = 'const StarterApp()';

  if (options.localize) {
    current =
        '''
EasyLocalization(
        supportedLocales: AppLocalization.supportedLocales,
        path: AppLocalization.assetPath,
        fallbackLocale: AppLocalization.fallbackLocale,
        startLocale: AppLocalization.fallbackLocale,
        child: $current,
      )''';
  }

  if (options.stateManagement == 'riverpod') {
    current =
        '''
ProviderScope(
      child: $current,
    )''';
  } else if (options.stateManagement == 'provider') {
    current =
        '''
MultiProvider(
      providers: const [],
      child: $current,
    )''';
  }

  return current;
}

String _buildBootstrapDart() {
  return '''
import 'package:flutter/widgets.dart';

Future<void> bootstrap({required Widget child}) async {
  runApp(child);
}
''';
}

String _buildAppDart(ScaffoldOptions options) {
  final imports = <String>[
    if (options.localize)
      "import 'package:easy_localization/easy_localization.dart';",
    "import 'package:flutter/material.dart';",
    if (options.router == 'go') "import 'router/app_router.dart';",
    "import 'theme/app_theme.dart';",
    if (options.router == 'navigator')
      "import '../features/home/presentation/pages/home_page.dart';",
  ];

  final materialAppConfig = <String>[
    "title: '${_escapeDartString(options.appTitle)}',",
    'debugShowCheckedModeBanner: false,',
    'theme: AppTheme.light(),',
    if (options.router == 'go') 'routerConfig: appRouter,',
    if (options.router == 'navigator') 'home: const HomePage(),',
    if (options.localize) 'locale: context.locale,',
    if (options.localize) 'supportedLocales: context.supportedLocales,',
    if (options.localize)
      'localizationsDelegates: context.localizationDelegates,',
  ];

  return '''
${imports.join('\n')}

class StarterApp extends StatelessWidget {
  const StarterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp${options.router == 'go' ? '.router' : ''}(
      ${materialAppConfig.join('\n      ')}
    );
  }
}
''';
}

String _buildAppThemeDart() {
  return '''
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light() {
    final scheme = ColorScheme.fromSeed(
      seedColor: const Color(0xFF1565C0),
      brightness: Brightness.light,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      scaffoldBackgroundColor: const Color(0xFFF7F8FC),
      appBarTheme: AppBarTheme(
        backgroundColor: scheme.surface,
        foregroundColor: scheme.onSurface,
        elevation: 0,
      ),
      cardTheme: CardThemeData(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      ),
    );
  }
}
''';
}

String _buildGoRouterDart() {
  return '''
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/pages/home_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const HomePage(),
    ),
  ],
);
''';
}

String _buildLocalizationConfigDart() {
  return '''
import 'package:flutter/material.dart';

class AppLocalization {
  static const assetPath = 'assets/i18n/generated';
  static const fallbackLocale = Locale('en');
  static const supportedLocales = <Locale>[
    Locale('en'),
    Locale('th'),
  ];
}
''';
}

String _buildHomePageDart(ScaffoldOptions options) {
  final imports = <String>[
    if (options.localize)
      "import 'package:easy_localization/easy_localization.dart';",
    "import 'package:flutter/material.dart';",
  ];

  final title = options.localize ? "'home.title'.tr()" : "'Welcome'";
  final subtitle = options.localize
      ? "'home.subtitle'.tr()"
      : "'Your Flutter foundation is ready.'";
  final action = options.localize ? "'home.primaryAction'.tr()" : "'Continue'";
  final plainAppTitle = _quotedDartString(options.appTitle);
  final appTitle = options.localize ? "'app.title'.tr()" : plainAppTitle;

  return '''
${imports.join('\n')}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text($appTitle),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 520),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      $title,
                      style: theme.textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      $subtitle,
                      style: theme.textTheme.bodyLarge?.copyWith(height: 1.4),
                    ),
                    const SizedBox(height: 24),
                    FilledButton(
                      onPressed: () {},
                      child: Text($action),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
''';
}

String _buildTranslationsCsv(String appTitle) {
  return '''
key,en,th
app.title,${_escapeCsvValue(appTitle)},${_escapeCsvValue(appTitle)}
home.title,Welcome,ยินดีต้อนรับ
home.subtitle,Your Flutter foundation is ready.,โครงสร้างเริ่มต้นของแอปพร้อมแล้ว
home.primaryAction,Continue,ดำเนินการต่อ
''';
}

String _escapeDartString(String value) {
  return value.replaceAll(r'\', r'\\').replaceAll("'", r"\'");
}

String _escapeXmlAttribute(String value) {
  return value
      .replaceAll('&', '&amp;')
      .replaceAll('"', '&quot;')
      .replaceAll('<', '&lt;')
      .replaceAll('>', '&gt;');
}

String _escapeXmlText(String value) {
  return value
      .replaceAll('&', '&amp;')
      .replaceAll('<', '&lt;')
      .replaceAll('>', '&gt;');
}

String _quotedDartString(String value) {
  return "'${_escapeDartString(value)}'";
}

String _escapeCsvValue(String value) {
  final escaped = value.replaceAll('"', '""');
  return '"$escaped"';
}

String _buildGenerateI18nDart() {
  return '''
import 'dart:convert';
import 'dart:io';

void main() async {
  final csvFile = File('assets/i18n/translations.csv');
  if (!await csvFile.exists()) {
    stderr.writeln('Missing assets/i18n/translations.csv');
    exitCode = 1;
    return;
  }

  final lines = await csvFile.readAsLines();
  final rows = lines
      .map((line) => _parseCsvLine(line))
      .where((row) => row.any((cell) => cell.trim().isNotEmpty))
      .toList();

  if (rows.length < 2) {
    stderr.writeln(
      'translations.csv must contain a header and at least one key row.',
    );
    exitCode = 1;
    return;
  }

  final header = rows.first.map((cell) => cell.trim()).toList();
  if (header.isEmpty || header.first != 'key' || header.length < 2) {
    stderr.writeln(
      'Header must start with "key" and include at least one locale column.',
    );
    exitCode = 1;
    return;
  }

  final locales = header.sublist(1);
  final localeMaps = <String, Map<String, Object?>>{
    for (final locale in locales) locale: <String, Object?>{},
  };

  for (var rowIndex = 1; rowIndex < rows.length; rowIndex++) {
    final row = rows[rowIndex];
    if (row.isEmpty) continue;

    final key = row.first.trim();
    if (key.isEmpty) {
      stderr.writeln('Row \${rowIndex + 1} is missing a translation key.');
      exitCode = 1;
      return;
    }

    for (var localeIndex = 0; localeIndex < locales.length; localeIndex++) {
      final locale = locales[localeIndex];
      final value = localeIndex + 1 < row.length
          ? row[localeIndex + 1].trim()
          : '';
      _writeNestedValue(localeMaps[locale]!, key, value);
    }
  }

  final outputDir = Directory('assets/i18n/generated');
  await outputDir.create(recursive: true);

  for (final entry in localeMaps.entries) {
    final outputFile = File('\${outputDir.path}/\${entry.key}.json');
    const encoder = JsonEncoder.withIndent('  ');
    await outputFile.writeAsString('\${encoder.convert(entry.value)}\\n');
  }
}

List<String> _parseCsvLine(String line) {
  final cells = <String>[];
  final buffer = StringBuffer();
  var inQuotes = false;

  for (var i = 0; i < line.length; i++) {
    final char = line[i];
    if (char == '"') {
      final nextIsQuote = i + 1 < line.length && line[i + 1] == '"';
      if (inQuotes && nextIsQuote) {
        buffer.write('"');
        i++;
      } else {
        inQuotes = !inQuotes;
      }
      continue;
    }

    if (char == ',' && !inQuotes) {
      cells.add(buffer.toString());
      buffer.clear();
      continue;
    }

    buffer.write(char);
  }

  cells.add(buffer.toString());
  return cells;
}

void _writeNestedValue(
  Map<String, Object?> root,
  String dottedKey,
  String value,
) {
  final segments = dottedKey.split('.');
  Map<String, Object?> current = root;

  for (var i = 0; i < segments.length; i++) {
    final segment = segments[i].trim();
    if (segment.isEmpty) {
      throw FormatException('Invalid dotted key: \$dottedKey');
    }

    final isLeaf = i == segments.length - 1;
    if (isLeaf) {
      current[segment] = value;
      return;
    }

    final next = current.putIfAbsent(segment, () => <String, Object?>{});
    if (next is! Map<String, Object?>) {
      throw FormatException('Key collision while writing \$dottedKey');
    }
    current = next;
  }
}
''';
}

class ScaffoldOptions {
  const ScaffoldOptions({
    required this.targetPath,
    required this.projectName,
    required this.stateManagement,
    required this.router,
    required this.localize,
    required this.org,
    required this.appTitle,
    required this.bundleId,
    required this.skipPubGet,
    required this.platforms,
  });

  final String targetPath;
  final String projectName;
  final String stateManagement;
  final String router;
  final bool localize;
  final String org;
  final String appTitle;
  final String bundleId;
  final bool skipPubGet;
  final List<String> platforms;
}
