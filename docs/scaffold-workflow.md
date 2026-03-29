# Scaffold Workflow

Use this workflow when a target repository needs a Flutter app foundation or a cleanup pass to align with the toolkit preset.

## Inputs to inspect first

- `pubspec.yaml`
- `lib/main.dart`
- `lib/app/`
- current routing setup
- current state management setup
- localization assets and scripts

## Expected result

The target project should finish with:

- Riverpod at the app root
- centralized `go_router` setup
- Material 3 theme entrypoint
- `easy_localization` initialization
- CSV-first translations under `assets/i18n/translations.csv`
- generated locale JSON files under `assets/i18n/generated/`
- a generator script under `scripts/generate_i18n.dart`

## Recommended order

1. inspect current project state
2. wire app bootstrap and root providers
3. centralize router setup
4. add theme and first screen structure
5. add localization source and generator
6. generate locale files
7. run lightweight verification
8. finish with a coherence review

## Toolkit starter assets

Use these files as copy-ready starting points when the target repo is missing them:

- `templates/flutter-starter/pubspec.yaml`
- `templates/flutter-starter/lib/`
- `templates/flutter-starter/assets/i18n/translations.csv`
- `templates/flutter-starter/scripts/generate_i18n.dart`
- `templates/flutter-starter/project-bootstrap-checklist.md`
