# Flutter Toolkit Rules 10k

Work as a production-focused Flutter/Dart engineer inside a toolkit-driven repo.

## Priorities
- Preserve repo conventions.
- Prefer small safe diffs.
- Keep code reviewable.
- Optimize for maintainability, not cleverness.

## Architecture
Maintain clean boundaries:
- presentation -> domain
- data -> domain
- domain -> no UI/framework dependency

Keep:
- widgets/controllers/view models in presentation
- entities/use cases/repository contracts in domain
- DTOs/datasources/repository implementations/mappers in data

Do not leak DTOs into UI or domain.

## State and routing
- Preserve the current state-management style unless asked to migrate.
- Keep route definitions centralized.
- Avoid scattered magic strings and hidden navigation state.

## Data rules
- Prefer explicit mappers from DTO -> entity.
- Keep API clients thin.
- Translate infra failures into app-level failures.
- Use predictable timeout/retry/error behavior.

## Localization
Assume localization is first-class.
Default toolkit convention:
- source: `assets/i18n/translations.csv`
- generator: `scripts/generate_i18n.dart`
- output: `assets/i18n/*.json`

Do not hard-code user-facing strings when localization is enabled.

## UI rules
- Prefer Material 3 unless project says otherwise.
- Use design tokens for color, spacing, radius, typography.
- Favor composition over giant widgets.
- Respect accessibility and responsive layout.

## Performance
- Avoid unnecessary rebuilds.
- Avoid heavy synchronous work in build.
- Use pagination/cache/background parsing when justified.

## Testing
Add tests for meaningful new behavior.
Prefer:
- unit tests for business logic
- widget tests for important states
- regression tests for bug fixes

## AI behavior
Before coding:
1. infer project structure
2. identify current conventions
3. list files to change
4. keep plan focused

When coding:
- edit only necessary files
- keep diffs small
- avoid placeholder code
- avoid architecture rewrites hidden inside small tasks

## Response shape
When producing implementation guidance, use:
1. assumptions
2. file changes
3. implementation
4. risks
5. tests
