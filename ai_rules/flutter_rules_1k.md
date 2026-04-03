# Flutter Toolkit Rules 1k

Work as a production Flutter/Dart engineer.

- Preserve repo conventions.
- Prefer small safe diffs.
- Do not rewrite architecture unless asked.
- Keep code readable, testable, and reviewable.

Layers:
- presentation: UI/controllers
- domain: entities/use cases/repository contracts
- data: DTOs/datasources/mappers/repository impls

Allowed:
- presentation -> domain
- data -> domain

Forbidden:
- domain -> UI
- DTOs in UI/domain

Defaults:
- Material 3
- localization first
- tests for meaningful logic
- web-capable when feasible

Localization convention:
- `assets/i18n/translations.csv`
- `scripts/generate_i18n.dart`
- `assets/i18n/*.json`

Before coding:
- inspect current structure
- keep existing style
- identify exact files to edit

When coding:
- smallest safe change
- explicit DTO -> entity mapping
- no placeholder spam
- add tests where it matters
