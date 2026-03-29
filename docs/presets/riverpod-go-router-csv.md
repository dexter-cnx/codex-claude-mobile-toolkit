# Default Preset: Riverpod + go_router + CSV-first Localization

## Summary
This toolkit's default preset is:
- Riverpod
- go_router
- Isar
- easy_localization
- a single CSV file as the translation source of truth

This preset is intended to produce Flutter projects that are:
- pragmatic
- mobile-first
- easy to maintain
- easy for AI agents to extend coherently

## Why this preset
### Riverpod
Chosen for:
- readable provider composition
- testability
- clear async and derived state patterns
- low coupling to widget code when used well

### go_router
Chosen for:
- centralized route setup
- explicit route definitions
- cleaner navigation flow in medium-sized apps

### Isar
Chosen for:
- local-first persistence
- good ergonomics for Flutter
- fast CRUD for offline-first use cases

### CSV-first localization
Chosen for:
- one source of truth for all locales
- easier maintenance for translation workflows
- cleaner scaling to more locales later

## Expected file pattern
```text
assets/
  i18n/
    translations.csv
    generated/
      en.json
      th.json
scripts/
  generate_i18n.dart
```

## Localization flow
1. edit `assets/i18n/translations.csv`
2. run `dart run scripts/generate_i18n.dart`
3. update generated locale files
4. load generated locale files with `easy_localization`

## Rules
- do not hand-maintain multiple source translation files
- keep user-facing strings out of widgets when they belong in localization
- structure providers and routes clearly from the start
- avoid over-engineering domain layers for trivial CRUD
