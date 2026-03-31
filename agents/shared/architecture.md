# Shared Architecture Guidance

## Default architectural stance
Use Clean Architecture Lite.

Expected feature structure:
```text
features/<feature_name>/
  presentation/
  domain/
  data/
```

## Presentation layer
Allowed:
- pages
- widgets
- providers and notifiers
- view models and state classes
- routing glue

Not allowed:
- raw HTTP calls
- JSON parsing
- repository implementation details
- heavy business rules in widget trees

## Domain layer
Contains:
- entities
- repository contracts
- use cases
- domain-specific rules

Domain should remain independent from Flutter widgets and infrastructure.

## Data layer
Contains:
- DTOs
- mappers
- remote data sources
- local data sources
- repository implementations

## State management
Prefer Riverpod.
Use explicit immutable state where practical.
Keep async flows outside widget build methods.

## Routing
Prefer go_router.
Parse route parameters in routing glue, not deep in widgets.

## Public API and catalog apps
For read-mostly public APIs:
- cache before remote when it improves UX,
- load related resources on demand,
- persist local-only user state such as favorites and recently viewed.
