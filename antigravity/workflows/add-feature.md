# Workflow: Add Feature

## Use when
Adding a new feature into an existing project that already follows the toolkit conventions.

## Inputs expected
- feature name
- user goal
- screens/routes involved
- domain rules
- data sources
- localization expectations

## Steps
1. Inspect AGENTS.md and existing feature patterns.
2. Map the feature into presentation/domain/data.
3. Reuse existing patterns before creating new abstractions.
4. Implement the smallest complete slice.
5. Add/update localization keys.
6. Add tests where the project pattern expects them.
7. Run verification.
8. Produce artifacts.

## Required verification
- `dart format .`
- `flutter analyze`
- targeted tests
- smoke validation of the feature flow if runtime is available
