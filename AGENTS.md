# AGENTS.md

## Purpose

This repository defines reusable AI workflows for Flutter projects using pragmatic Clean Architecture.

All agents working in repos that adopt this toolkit should follow the same architectural rules unless a repo-level override says otherwise.

## Default engineering stance

- Prefer maintainable code over clever code.
- Prefer small reusable widgets over giant screens.
- Prefer explicit boundaries over magic.
- Prefer consistency with existing project conventions when those conventions are sound.
- Avoid over-engineering.

## Flutter architecture rules

### Layering

Use three primary layers:

- `presentation`
- `domain`
- `data`

Direction of dependency:

- presentation -> domain
- data -> domain
- domain -> nothing project-specific

### Presentation layer

Presentation should:

- compose widgets
- handle visual states
- delegate work to controllers / notifiers / providers / blocs depending on the repo

Presentation should not:

- call HTTP directly
- parse JSON
- contain business rules
- know DTO structure

### Domain layer

Domain should contain:

- entities
- repository contracts
- use cases
- domain-specific value objects if needed

Domain should stay framework-light.

### Data layer

Data should contain:

- DTOs / models
- mappers
- repository implementations
- remote data sources
- local data sources
- error translation

## UI rules

- Use Material 3 unless the repo explicitly says otherwise.
- Centralize design tokens.
- Support loading / empty / error / success states.
- Keep pages thin.
- Split large widget trees into focused components.

## Localization rules

- Prefer one CSV source of truth.
- Generate locale JSON outputs from CSV.
- Support dotted keys.
- Do not hardcode user-facing strings when a translation key exists.

## Networking rules

- Prefer Dio when the repo uses Dio.
- Keep API clients outside widgets.
- Map transport errors to app-facing failures.

## Refactor rules

When editing an existing repo:

1. Inspect local conventions first.
2. Reuse sound patterns already present.
3. Do not rewrite unrelated modules.
4. End with a coherence pass:
   - imports
   - layer direction
   - naming consistency
   - registration / routing updates
   - missing states

## Response format for agent work

When generating or changing code, prefer this order:

1. Assumptions
2. Plan
3. File changes
4. Code
5. Risks / follow-ups

Keep the output concise unless asked for more detail.
