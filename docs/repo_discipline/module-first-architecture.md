# Module-First Architecture Standard

## Why this exists

A toolkit becomes harder to use when it grows by topic instead of by delivery unit.
The preferred delivery unit is the **feature module**.

## Default structure

```text
lib/
  src/
    core/
      config/
      routing/
      networking/
      telemetry/
      theming/
    shared/
      widgets/
      models/
      utils/
      guards/
    features/
      auth/
        presentation/
        domain/
        data/
      catalog/
        presentation/
        domain/
        data/
```

## Definitions

### core
App-wide systems that are reused by many features.

### shared
Reusable but not globally infrastructural code.

### features
Business-facing vertical slices.
Each feature owns its presentation, domain, and data concerns.

## Boundary rules

1. Presentation depends on domain and UI-support code, not remote clients directly.
2. Domain is framework-light and should not depend on widget concerns.
3. Data owns DTOs, mappers, datasources, and repository implementations.
4. Cross-feature reuse should move to `shared` only after it is proven reusable.
5. Global singletons must be rare and intentional.

## Required contents for a production-ready feature

- clear entry screen or entry widget
- route integration note
- state model or controller ownership note
- repository contract
- loading / empty / error handling
- localization keys
- test surface note
- telemetry hook points

## Agent instructions

When creating a new feature:
1. scaffold the feature module first,
2. define contracts before implementation,
3. keep remote and local data models out of presentation,
4. record any architectural exceptions in the PR or summary artifact.

## Anti-patterns

- dumping feature logic into `shared/`
- using one generic `services/` folder for everything
- leaking API response models into widgets
- creating “helper” files that silently become architecture escape hatches
