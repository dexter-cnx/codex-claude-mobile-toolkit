# Project Bootstrap Checklist

Use this checklist while scaffolding or refreshing a Flutter project foundation.

- `pubspec.yaml` contains Riverpod, go_router, Isar, and easy_localization dependencies
- `lib/main.dart` initializes the app cleanly
- `lib/app/bootstrap.dart` owns startup wiring when needed
- `lib/app/app.dart` owns the root `MaterialApp.router`
- `lib/app/router/` contains centralized `go_router` definitions
- `lib/app/theme/` contains Material 3 theme setup
- `lib/app/l10n/localization.dart` contains locale configuration
- `lib/features/home/` contains a small first-run screen proving the structure works
- `assets/i18n/translations.csv` exists as the source of truth
- `scripts/generate_i18n.dart` exists and writes to `assets/i18n/generated/`
- generated locale JSON files exist for every locale column in the CSV
- `pubspec.yaml` declares the localization assets
- `flutter analyze` passes or remaining issues are explained
