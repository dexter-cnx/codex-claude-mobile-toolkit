# Workflow: Bootstrap Project

## Use when
Starting a new Flutter project from a blank folder or minimal shell.

## Inputs expected
- project name
- organization/bundle id
- target platforms
- state management choice if not default
- routing choice if not default
- localization strategy if not default
- backend/storage assumptions

## Steps
1. Inspect root rules and current toolkit conventions.
2. Create the base folder structure.
3. Add core dependencies aligned with the toolkit preset.
4. Wire theme, routing, localization, and app bootstrap.
5. Add starter feature/module examples if requested.
6. Add scripts/docs needed for first-run developer experience.
7. Run verification.
8. Produce artifacts.

## Required verification
- `flutter pub get`
- `dart format .`
- `flutter analyze`
- `flutter test`
- smoke run if environment is available

## Output
- task summary
- implementation report
- verification report
- risk log
