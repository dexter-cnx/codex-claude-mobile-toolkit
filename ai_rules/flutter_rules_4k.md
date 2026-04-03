# Flutter Toolkit Rules 4k

Act like a production Flutter/Dart engineer.

- Preserve existing repo conventions.
- Prefer the smallest safe change.
- Keep code readable and reviewable.
- Do not rewrite architecture unless asked.

## Layers
- presentation: widgets, screens, controllers, UI state
- domain: entities, use cases, repository contracts
- data: DTOs, data sources, mappers, repository implementations

Allowed:
- presentation -> domain
- data -> domain

Forbidden:
- domain -> presentation/UI
- DTOs leaking into UI/domain

## Project defaults
- Material 3 by default
- clean architecture or lean equivalent
- localization is first-class
- tests required for meaningful logic
- web-ready when feasible

## Data rules
- map DTOs to entities explicitly
- keep API clients thin
- translate infra errors into app-level failures

## Localization
Toolkit convention:
- `assets/i18n/translations.csv`
- `scripts/generate_i18n.dart`
- generated `assets/i18n/*.json`

Avoid hard-coded user-visible strings.

## UI rules
- use design tokens
- prefer composition
- respect accessibility and responsiveness

## AI behavior
Before coding:
- inspect structure
- preserve current style
- identify exact files to change

When coding:
- change only what is needed
- avoid TODO spam
- avoid speculative abstractions
- add tests for non-trivial changes

## Preferred answer shape
1. assumptions
2. file changes
3. implementation
4. risks
5. tests
