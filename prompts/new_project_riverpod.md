# prompts/new_project_riverpod.md

You are working in a Flutter project that uses this toolkit.
Read `AGENTS.md` first and follow it strictly.

## Goal
Scaffold or refresh a Flutter project foundation using the default toolkit preset:
- Riverpod
- go_router
- Isar
- easy_localization
- CSV-first localization source of truth
- Material 3

The result should be:
- compile-friendly
- pragmatic
- readable
- ready for real feature work

## Working mode
Treat this as the **project foundation workflow**.
Do not just dump code.
Establish a clean baseline that future feature prompts can extend safely.

## Architecture expectations
Use a pragmatic simple clean architecture.
Prefer this structure unless a small improvement is clearly better:

```text
lib/
  app/
    app.dart
    bootstrap.dart
    router/
    theme/
    l10n/
    core/
      constants/
      errors/
      utils/
      services/
      widgets/
  features/
    home/
    settings/
  data/
    models/
    repositories/
    datasources/
  domain/
    entities/
    repositories/
    usecases/
```

Do not generate ceremony-heavy boilerplate for trivial CRUD.

## Required foundation work
Implement the foundation for:
1. app bootstrap
2. Riverpod provider structure
3. go_router route setup
4. Isar initialization
5. easy_localization initialization
6. CSV-first localization workflow
7. Material 3 theme setup
8. starter screens and empty states

## Localization requirements
Use:
- `assets/i18n/translations.csv` as the source of truth
- `scripts/generate_i18n.dart` to generate locale JSON runtime files
- `easy_localization` to load generated locale files

Support at least:
- `en`
- `th`

## Quality bar
- real code, not pseudo-code
- compile-friendly
- readable file boundaries
- no backend/auth/cloud sync unless explicitly requested
- no hardcoded user-facing strings outside the localization flow

## Output order
1. explain the structure briefly
2. generate `pubspec.yaml`
3. generate folder tree
4. generate bootstrap and router
5. generate providers
6. generate persistence setup
7. generate localization assets and generator script
8. generate starter screens/widgets
9. summarize what is complete and what to build next
