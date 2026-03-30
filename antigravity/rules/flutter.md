# Flutter Rules

## Default stack assumptions
Unless the target project says otherwise, assume:
- Flutter stable
- Material 3
- Riverpod for state management
- go_router for navigation
- easy_localization with CSV-first source-of-truth workflow
- Isar for local-first storage where needed

## UI rules
- Widgets should focus on rendering and composition.
- Use dedicated states for loading, empty, error, and success.
- Keep text, spacing, radius, and colors aligned with tokens/theme.
- Avoid large pages with embedded side effects.

## Domain rules
- Entities and use cases should not depend on Flutter.
- Validation and business rules belong outside the widget tree.
- Keep use cases explicit when business behavior matters.

## Data rules
- Repositories are the boundary used by domain.
- DTO/model mapping stays in data.
- Persistence and transport details do not leak into presentation.

## Localization rules
- Use one CSV file as source of truth when this toolkit preset is active.
- Export locale JSON artifacts for runtime use.
- Do not hardcode user-facing strings into widgets unless the task explicitly says not to localize them yet.

## Verification rules
At minimum run:
- `flutter pub get`
- `dart format .`
- `flutter analyze`
- `flutter test`

If localization changed, also verify generated JSON output.
If navigation changed, also validate route registration and one smoke navigation path.
