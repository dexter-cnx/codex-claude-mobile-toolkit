# Cache-First Rendering for Flutter

## Purpose

Cache-first rendering is a UI and data-loading strategy where the app renders local or cached data immediately, then fetches fresh remote data in the background, and updates the visible state safely.

This pattern improves **perceived performance** and reduces blocking initial-load behavior.

## Core idea

Traditional blocking flow:

```text
open screen
-> request remote data
-> wait
-> render UI
```

Cache-first flow:

```text
open screen
-> load local snapshot
-> render immediately if available
-> fetch fresh data in background
-> merge with pending user actions
-> update UI
-> persist latest merged result
```

## When to use it

Use cache-first rendering for features where:

- the screen frequently loads previously seen data
- initial waiting time is visible to users
- preserving scroll context or current visible state matters
- offline resilience is valuable
- the feature is read-heavy but may include local user mutations such as like, favorite, bookmark, archive, or mark-as-read

Typical candidates:

- home feed
- dashboard summary
- recent activity list
- notifications
- document list
- message/thread previews
- service history list
- vehicle/event timeline

## What it is not

Cache-first rendering is **not** the same as:

- full offline sync engine
- automatic conflict-free replication
- permanent source-of-truth replacement for the backend
- a license to show stale data forever

It is a pragmatic rendering and state-transition strategy.

## UX rules

When cached data exists:

- do not show a blocking full-screen loader
- prefer rendering the last usable snapshot immediately
- use small loading affordances for refresh state
- do not wipe visible content on refresh errors
- avoid flicker during refresh transitions
- preserve local optimistic interactions until remote truth is merged

## Architecture placement

### Widgets
Widgets should:

- render state
- dispatch intents
- avoid direct cache orchestration
- avoid mixing remote DTO logic with view logic

### State layer
The controller/notifier/viewmodel should:

- expose visible data
- expose refresh status
n- track pending local mutations when needed
- trigger initial cache load and background refresh
- coordinate merge behavior

### Repository layer
Repositories should:

- load local snapshot
- fetch remote data
- persist merged result
- keep local/remote mapping explicit
- avoid leaking storage details into presentation

### Local storage layer
Storage implementations should:

- read/write snapshots efficiently
- version data when needed
- support invalidation policy
- not contain view-specific state unless intentionally designed

## Recommended rollout strategy

Do not convert the whole app at once.

Start with 1 high-impact feature:

1. Audit current loading path.
2. Identify whether local snapshot already exists.
3. Add cache-first render behavior.
4. Add safe background refresh.
5. Add merge logic for pending actions.
6. Test error handling and persistence.
7. Expand pattern gradually to adjacent flows.

## State shape recommendation

A practical state shape usually needs:

- `data`: currently visible domain model(s)
- `isInitialLoad`: whether there has never been visible data yet
- `isRefreshing`: background refresh in progress
- `error`: most recent refresh/load error
- `pendingMutations`: local actions not yet fully reconciled with remote data
- `source`: optional flag such as `cache`, `remote`, `merged`

## Refresh policy recommendation

Good defaults:

- show cache immediately when available
- refresh on first open
- refresh on explicit pull-to-refresh
- optionally refresh on resume if cache is old enough
- persist merged data, not raw remote data that would erase pending optimistic state

## Common failure modes

### 1. Cache overwrite race

```text
cached state visible
-> user likes item
-> fresh remote list arrives without the like applied
-> controller replaces visible list wholesale
-> local interaction appears lost
```

Fix:

- track pending mutations separately
- merge remote with pending local state before committing visible state

### 2. Destructive refresh error

```text
cached content visible
-> refresh fails
-> state becomes pure error state
-> UI loses visible content
```

Fix:

- keep cached content visible
- expose error as non-destructive status

### 3. Widget-level cache logic

Fix:

- move cache/refresh logic into repository + state layer

### 4. Global abstraction too early

Fix:

- solve one feature first
- generalize only when multiple features share the same shape

## Recommended storage options

Choose the lightest appropriate option already present in the project:

- Isar: strong fit for structured offline snapshots and indexed local data
- Hive: simple key-value snapshots and lightweight cached structures
- SQLite/Drift: relational cached queries and larger structured datasets
- SharedPreferences: only for small primitive or trivial snapshot metadata, not rich lists

## Suggested implementation sequence for an existing project

1. Pick one feature.
2. Audit current data path.
3. Add repository methods for `loadCached`, `fetchFresh`, `saveSnapshot`.
4. Add state model with refresh and pending-mutation awareness.
5. Update notifier/controller to:
   - load cache first
   - render immediately
   - refresh in background
   - merge pending actions
   - persist merged result
6. Adjust UI loaders and error treatment.
7. Add focused tests.

## Definition of done

A feature is considered successfully migrated when:

- cached content renders before network completes
- fresh refresh does not block the current UI
- local user interactions survive overlapping refreshes
- refresh errors do not wipe visible content
- merged state is persisted for future opens
