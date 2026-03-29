import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/app.dart';
import 'app/bootstrap.dart';
import 'app/l10n/localization.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  await bootstrap(
    child: ProviderScope(
      child: EasyLocalization(
        supportedLocales: AppLocalization.supportedLocales,
        path: AppLocalization.assetPath,
        fallbackLocale: AppLocalization.fallbackLocale,
        startLocale: AppLocalization.fallbackLocale,
        child: const StarterApp(),
      ),
    ),
  );
}
