# Flutter Toolkit Master Rules

You are working in a Flutter/Dart codebase that prioritizes maintainability, clean boundaries, and production readiness.

## Core operating principles

- Preserve existing architecture unless there is a strong reason to change it.
- Prefer incremental edits over wide rewrites.
- Make the smallest safe change that solves the problem.
- Optimize for readability, reviewability, and long-term maintainability.
- Do not introduce complexity that the current feature does not justify.

## Project defaults

- Framework: Flutter
- Language: Dart
- UI system: Material 3 unless the project explicitly says otherwise
- Primary target: mobile first, web-capable when feasible
- Architecture: Clean Architecture or a lean variant of it
- Localization: first-class concern
- Testing: required for business logic and important UI flows
- Performance: avoid unnecessary rebuilds, blocking work on main isolate, and wasteful allocations

## Architecture rules

### Layers

Maintain explicit separation between:

- `presentation`: widgets, screens, controllers, view models, route bindings, UI state
- `domain`: entities, repository contracts, use cases, domain services, pure business logic
- `data`: remote/local data sources, DTOs, mappers, repository implementations, persistence

### Allowed dependencies

- `presentation` may depend on `domain`
- `data` may depend on `domain`
- `domain` must not depend on `presentation`
- `domain` must not depend on Flutter UI classes
- `data` must not import presentation concerns
- DTOs must not leak into UI or domain layers
- Entities must not depend on infrastructure details

### Use cases

- Put business actions behind use cases when the logic is non-trivial.
- Keep use cases framework-light and side-effect aware.
- Each use case should have a clear input, output, and failure model.
- Prefer simple, explicit orchestration over hidden behavior.

### Repository design

- Repository interfaces belong in `domain`.
- Repository implementations belong in `data`.
- Repositories should return domain models or domain-safe result types.
- Mapping from raw API/storage payloads into domain objects must happen in `data`.

## State management rules

When a project profile is not specified, infer from the codebase and preserve the current style.

### GetX projects
- Keep controllers focused on presentation orchestration.
- Do not move business rules into widgets.
- Use bindings or equivalent composition points to wire dependencies.
- Avoid giant controllers with unrelated responsibilities.
- Navigation should stay centralized and predictable.

### Riverpod projects
- Keep providers close to the feature they serve.
- Prefer explicit provider naming.
- Separate async state handling from domain logic.
- Avoid leaking infrastructure code into provider definitions.
- Preserve testability of notifiers and providers.

## Routing rules

- Keep route definitions centralized and discoverable.
- Prefer typed or structured navigation patterns where practical.
- Avoid scattered magic strings.
- New routes must include dependency setup and failure-safe entry behavior.
- Deep-link-sensitive flows should not rely on implicit global state.

## Data and networking rules

- Prefer `dio` for REST-based projects when already in use.
- Every remote model should be represented by a DTO or response model in `data`.
- Convert DTOs into domain entities through explicit mappers.
- Surface failures in a predictable, app-level model.
- Configure sensible timeouts, retry behavior, and error translation.
- Keep API clients thin; do not bury feature logic in low-level clients.

## Localization rules

Treat localization as part of architecture, not an afterthought.

Default convention for toolkit-generated projects:

- source of truth: `assets/i18n/translations.csv`
- generator: `scripts/generate_i18n.dart`
- outputs: language JSON files under `assets/i18n/`
- dotted keys should compile into nested JSON objects

Rules:
- Do not hard-code user-facing strings in widgets when localization is enabled.
- Name localization keys by feature and intent, not by visible wording alone.
- Add keys and generated artifacts together when required by the project workflow.
- Preserve backward compatibility for existing keys when possible.

## UI and design system rules

- Prefer reusable design tokens for color, spacing, radius, typography, elevation, and sizing.
- Do not introduce ad hoc spacing or color values repeatedly.
- Build shared UI primitives when repetition becomes visible.
- Respect accessibility, responsiveness, text scaling, and safe areas.
- Keep widgets small when they are doing too many jobs.
- Prefer composition over giant god-widgets.

## Performance rules

- Avoid unnecessary rebuilds and duplicated expensive computations.
- Use isolates or background parsing where justified for heavy JSON/data transforms.
- Prefer lazy loading, pagination, and cache-aware flows where appropriate.
- Keep lists efficient and stable.
- Avoid synchronous heavy work during build.
- Measure before making invasive performance changes.

## Error handling and resilience

- Translate infrastructure failures into app-level error models.
- Avoid silent catches.
- Use clear empty/loading/error states in UI.
- Make retry behavior explicit.
- Guard against null, invalid, partial, and stale data.
- Prefer graceful degradation over crashes.

## Testing rules

Minimum expectation:

- Unit tests for meaningful business logic
- Widget tests for critical UI states
- Integration or end-to-end coverage for high-risk flows where justified

Guidelines:
- Write tests for new non-trivial behavior.
- Add regression tests for bug fixes when practical.
- Keep tests deterministic.
- Avoid excessive mocking when simpler seams exist.
- Name tests by behavior, not implementation trivia.

## Dependency and package rules

- Prefer established, actively maintained packages.
- Do not add a dependency if a small internal abstraction is sufficient.
- Avoid overlapping packages solving the same problem unless justified.
- When introducing a package, explain why it is needed, where it fits architecturally, and what alternative was rejected.

## AI execution rules

Before writing code:

1. Infer the current project structure.
2. Identify the architecture pattern already in use.
3. Preserve conventions unless asked to migrate them.
4. List the files likely to change.
5. Prefer a focused plan over speculative expansion.

When implementing:

- Modify only the files required for the task.
- Follow naming and folder conventions already used by the repo.
- Keep diffs review-friendly.
- Avoid placeholder code unless explicitly requested.
- Avoid TODO spam.

When refactoring:

- Separate refactor changes from behavior changes where possible.
- Preserve public behavior unless a change is explicitly requested.
- Call out migration risks.
- Do not sneak in architecture rewrites under a small feature request.

## Output format for AI-generated work

When asked to produce implementation guidance or code changes, structure the response like this unless the user requests otherwise:

1. Assumptions
2. Proposed file changes
3. Implementation details
4. Risks or edge cases
5. Test notes
6. Optional follow-up improvements

## Non-goals

- Do not optimize prematurely.
- Do not convert everything into abstractions without evidence of reuse.
- Do not mix experimental patterns into stable production code without clear isolation.
- Do not replace the project's chosen architecture just because another pattern is fashionable.

## Default quality bar

Every change should aim to be:

- understandable by another developer quickly
- compatible with the current repo conventions
- easy to review
- easy to test
- safe to extend later
