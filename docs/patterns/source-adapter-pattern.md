# Source Adapter Pattern

## Purpose

Use a stable adapter contract when a Flutter feature must read from one or more external or internal data sources without coupling the UI, domain logic, or repository layer to provider-specific request formats.

Typical use cases:

- searchable content catalogs
- document libraries
- media browsers
- product lists
- remote + local aggregated content
- CMS-backed discovery surfaces

## Core idea

The app should talk to a **source adapter contract**, not directly to a provider-specific implementation.

The contract should support these conceptual flows:

- `browse`: default discovery entrypoint
- `latest`: recency-based discovery entrypoint
- `search`: query-driven discovery entrypoint
- `detail`: canonical detail refresh
- `hydrate`: restore missing metadata after import / restore
- optional `suggestions`: typeahead or search hints

## Why this helps

- isolates provider-specific request quirks
- keeps pagination behavior predictable
- makes feature migration safer
- supports multiple providers behind the same feature contract
- improves testability
- enables agent-friendly scaffolding and review

## Recommended boundaries

### Presentation
Presentation should know only:

- current query
- selected filters
- loading state
- paged items
- user actions

### Domain
Domain should define:

- entity models
- adapter interfaces
- pagination contracts
- filter schema abstractions
- repository policies

### Data
Data should implement:

- provider clients
- DTO mapping
- cache strategy
- adapter implementations
- fallback behavior

## Minimum adapter contract

```dart
abstract class ContentSourceAdapter<TQuery, TItem, TDetail, TFilterState> {
  Future<PagedResult<TItem>> browse({
    required int page,
    required TFilterState filters,
  });

  Future<PagedResult<TItem>> latest({
    required int page,
    required TFilterState filters,
  });

  Future<PagedResult<TItem>> search({
    required TQuery query,
    required int page,
    required TFilterState filters,
  });

  Future<TDetail> getDetail({
    required String stableId,
  });

  Future<TDetail> rehydrate({
    required String stableId,
  });
}
```

## Stable identifier rule

Every source-backed entity should expose a **stable source-scoped identifier**. Avoid using only a display title.

Recommended structure:

- `sourceId`
- `stableId`
- optional `canonicalUrl`
- optional `versionHash`

## Paged result contract

Use one envelope shape across all adapters.

```dart
class PagedResult<T> {
  final List<T> items;
  final bool hasMore;
  final String? nextCursor;
  final int? nextPage;

  const PagedResult({
    required this.items,
    required this.hasMore,
    this.nextCursor,
    this.nextPage,
  });
}
```

Rules:

- offset/page sources should prefer `nextPage`
- cursor-based sources should prefer `nextCursor`
- never mix ad hoc pagination envelopes across features
- empty `items` with `hasMore=true` is a bug unless explicitly documented

## Recommended repository orchestration

The feature repository may choose among:

- remote-only
- cache-then-network
- stale-while-revalidate
- local-first with remote refresh
- source fan-in aggregation

Default recommendation for content-heavy apps:

1. load cached snapshot if available
2. render immediately
3. refresh in background
4. merge without destructive UI flicker
5. keep selection and scroll state stable when possible

## Error strategy

Normalize provider errors into domain-safe failures:

- `network`
- `auth`
- `rateLimited`
- `notFound`
- `parsing`
- `unsupported`
- `unknown`

Do not leak raw provider-specific exceptions into presentation state.

## Verification checklist

- same UI works across at least two adapters
- page 1 and page 2 merge correctly
- refresh preserves list coherence
- stable ID survives export/import
- detail refresh can restore incomplete backup records
- unsupported filter fields degrade safely
