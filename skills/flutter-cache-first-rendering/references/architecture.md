# Architecture Guidance

## Intent

Add cache-first rendering as an **incremental adaptation** to an existing Flutter architecture.

## Preferred integration points

### Clean Architecture projects

Best placement:

- presentation: state model + notifier/controller/viewmodel changes
- domain: use cases remain thin unless orchestration belongs there already
- data: repository handles cache + remote sourcing and persistence

### Simpler layered projects

Best placement:

- repository/service for cache and remote orchestration
- controller/notifier for visible staged state
- widgets remain declarative

## Responsibility split

### Widgets

- render visible state
- dispatch user intent
- avoid direct cache or merge logic

### State holder

- choose visible state to emit
- track refresh status
- track pending local mutations if needed
- coordinate non-destructive errors

### Repository

- load cached snapshot
- fetch remote data
- save merged snapshot
- keep mapping between persistence and domain explicit

## Retrofit principles

- start with one feature
- avoid cross-repo abstractions on first pass
- keep APIs backward-compatible where possible
- only generalize after 2-3 successful feature migrations

## Good first candidates

- home feed
- recent list
- dashboard summary
- notifications list
- service history list

## Poor first candidates

- highly transactional checkout/payment flows
- flows requiring guaranteed real-time remote truth before display
- volatile admin actions where stale content is dangerous
