# GraphQL Flutter Pattern for Read-Mostly Catalog Apps

## Purpose

This document defines the recommended delivery pattern for Flutter apps backed by a public or semi-public GraphQL API when the product is primarily browse/detail oriented.

Typical examples:

- Pokédex-style apps,
- media catalogs,
- encyclopedia-style reference apps,
- browse/detail products with related entities,
- and demo apps intended to feel production-grade rather than tutorial-grade.

## Why GraphQL deserves its own lane

GraphQL is not just "REST but with a different client."

It changes the delivery model in important ways:

- the client defines the shape of requested data,
- field nullability matters directly to UI resilience,
- related data is often traversed through nested selections,
- fragments and generated types become part of the architecture,
- schema drift can break generated code without any URL change,
- normalized caching behaves differently from ad hoc local response caches.

A repo that treats GraphQL like ordinary JSON-over-HTTP usually ends up with:

- query strings scattered through widgets,
- inconsistent operation naming,
- repeated DTOs,
- unverified null handling,
- cache behavior no one can explain,
- and generated artifacts that drift from the schema.

This lane exists to avoid those failure modes.

## Characteristics of the pattern

A GraphQL catalog app usually has:

- browse/list pages,
- detail pages,
- nested related resources,
- optional local-only user state,
- high tolerance for stale but useful content,
- and relatively low remote write complexity.

Examples of local-only state:

- favorites,
- recently viewed,
- saved teams or collections,
- hidden items,
- display preferences,
- notes.

## Recommended architecture

Use a feature-first structure with:

- `presentation/` for UI composition and state wiring,
- `domain/` for entities, repository contracts, and use cases,
- `data/` for GraphQL operations, generated models, mappers, repository implementations, and cache coordination.

Do not allow GraphQL generated models to leak directly into presentation unless the app is explicitly a throwaway demo. For production work, map them into stable domain entities or feature read models.

## Recommended folder strategy inside an app repo

A practical GraphQL feature commonly benefits from this shape:

```text
features/pokedex/
|- presentation/
|  |- pages/
|  |- widgets/
|  |- controllers/ or providers/
|  `- state/
|- domain/
|  |- entities/
|  |- repositories/
|  `- usecases/
`- data/
   |- graphql/
   |  |- operations/
   |  |- fragments/
   |  `- generated/
   |- dto/
   |- mappers/
   |- datasources/
   `- repositories/
```

Keep operation documents close to the feature that owns them unless the whole app shares a common GraphQL package.

## Operation-document-first rule

Always define explicit operation documents before writing the repository implementation.

The normal sequence is:

1. inspect the schema,
2. define fragments,
3. define query documents,
4. generate models,
5. map generated outputs to domain,
6. implement repository behavior,
7. wire state and UI.

Do not start by manually inventing Dart DTOs.

## Query boundaries

Design operations around screens and user flows, not around every possible field.

Good boundaries:

- list card query,
- detail query,
- related entity query,
- search query,
- compare query.

Bad boundaries:

- one giant everything-query for the whole app,
- one query per tiny widget,
- or a mixture of handwritten JSON parsing and generated models.

## Fragments

Use fragments when:

- list cards repeat the same selection set,
- the same subset appears across detail and related cards,
- a compare screen reuses a subset of fields,
- or a nested relation should keep the same shape across multiple operations.

Fragment naming should be stable and explicit. Example:

- `PokemonListCard`
- `PokemonDetailHeader`
- `PokemonAttackSummary`
- `EvolutionChainNode`

## Cache strategy

This lane assumes a cache-first UX for read-mostly content.

### List pages

Preferred flow:

1. render cached list data if still useful,
2. start background refresh,
3. update visible state without jarring replacement,
4. preserve local-only overlays such as favorites.

### Detail pages

Preferred flow:

1. render cached detail if present,
2. show stale/refresh status if needed,
3. fetch fresh detail,
4. merge remote response with local overlays,
5. preserve visible content on refresh failure.

### Related resources

Load related resources lazily unless eager loading clearly improves the experience without unacceptable payload growth.

## Local-only user state

Keep local-only state separate from remote GraphQL cache.

Examples:

- favorite IDs in Isar, Hive, Drift, or SharedPreferences,
- recent history in local storage,
- saved teams or compare sets in local persistence.

Do not try to force these into the remote schema unless the product really owns a backend for them.

## Nullability and partial data

GraphQL makes nullability part of the contract. That means UI state design must account for:

- field present and usable,
- field absent but screen still renderable,
- nested relation unavailable,
- and partial data with error metadata.

The UI should explicitly handle:

- loading,
- success,
- empty,
- error,
- stale cached data while refreshing,
- and partial detail sections.

Do not equate "query succeeded" with "all sections should render identically."

## Recommended testing surface

For GraphQL catalog features, verify at least:

- operation documents are valid,
- code generation runs cleanly,
- mapper correctness,
- repository success and failure paths,
- null-field handling,
- partial data handling,
- cache-backed rendering behavior,
- local-only overlays such as favorites and recent history,
- and stale-refresh behavior.

## Common mistakes

Avoid these:

- putting GraphQL queries inside widgets,
- leaking generated models into presentation indiscriminately,
- inventing handwritten DTOs that duplicate generated types,
- treating normalized cache as if it were app-owned business persistence,
- hiding stale-data behavior from the user,
- and skipping schema/codegen verification in CI.

## When to use this pattern

Use this pattern when:

- the app is browse/detail oriented,
- GraphQL is the real source of truth for read-side data,
- there is value in local caching and non-destructive refresh,
- and multiple GraphQL features need a consistent repo-level delivery model.

## When not to use this pattern

Do not use this pattern when:

- the app has only one trivial GraphQL call,
- the team is still prototyping throwaway proof-of-concept code,
- or the main complexity is mutation-heavy transactional behavior rather than catalog browsing.