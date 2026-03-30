# Staged State Pattern for Flutter

## Purpose

Staged state is a practical pattern for preventing data loss and UI inconsistency when cache-first rendering and optimistic interactions happen at the same time.

It separates:

- current visible state
- pending local actions
- incoming fresh remote data
- final committed merged state

## Why staged state matters

Without staged state, a common bug appears:

1. cached content renders quickly
2. the user performs an action locally
3. remote refresh finishes later
4. remote payload replaces the visible state blindly
5. the user's recent action appears to disappear

Staged state prevents this by merging remote payloads with pending local actions before commit.

## Mental model

```text
visible state
+ pending local mutations
+ fresh remote payload
= merged committed state
```

## Minimum staged state model

```dart
class FeedUiState {
  final List<Post> visiblePosts;
  final bool isRefreshing;
  final Object? refreshError;
  final List<PendingMutation> pendingMutations;
  final DataOrigin origin;

  const FeedUiState({
    required this.visiblePosts,
    required this.isRefreshing,
    required this.refreshError,
    required this.pendingMutations,
    required this.origin,
  });
}
```

Where `DataOrigin` may be:

- `cache`
- `remote`
- `merged`

## Pending mutation examples

Use pending mutations for actions such as:

- like/unlike
- favorite/unfavorite
- bookmark/unbookmark
- archive/unarchive
- mark-as-read / unread
- soft delete
- local reorder awaiting sync

A mutation object usually needs:

- target entity id
- mutation type
- timestamp
- optional payload
- optional sync state

## Merge principle

When fresh remote data arrives:

1. parse remote payload
2. reapply still-pending local mutations over it
3. emit merged visible state
4. persist merged state if appropriate
5. clear only the mutations that are truly reconciled

## What not to do

Do not:

- replace the whole state with fresh remote data blindly
- clear pending actions too early
- erase visible content on refresh failure
- store widget-only concerns inside repository snapshots without reason

## Reconciliation rules

A mutation can be considered reconciled when:

- the server response already reflects it, or
- the sync path explicitly completed successfully, or
- the backend returned authoritative replacement data that includes the same outcome

Otherwise, keep it pending.

## Error handling rules

### Refresh failure

- keep visible content
- preserve pending local state
- expose refresh error separately

### Mutation failure

Choose one of these strategies per feature:

- rollback optimistic update
- mark item as failed-to-sync
- keep pending and retry later

The repo should document which strategy a feature uses.

## Good fit for Riverpod

Staged state works well with:

- `Notifier`
- `AsyncNotifier` with custom cached state modeling
- `StateNotifier`

Prefer an explicit state model rather than raw `AsyncValue<List<T>>` when the feature needs:

- cached visible state
- refresh-in-place
- pending mutations
- partial error reporting

## Example merge function

```dart
List<Post> applyPendingMutations(
  List<Post> fresh,
  List<PendingMutation> pending,
) {
  var result = fresh;

  for (final mutation in pending) {
    result = mutation.apply(result);
  }

  return result;
}
```

## Example controller flow

```dart
Future<void> initialize() async {
  final cached = await repository.loadCachedFeed();
  if (cached != null) {
    state = state.copyWith(
      visiblePosts: cached,
      origin: DataOrigin.cache,
      isRefreshing: true,
      refreshError: null,
    );
  }

  unawaited(refresh());
}

Future<void> refresh() async {
  state = state.copyWith(isRefreshing: true, refreshError: null);

  try {
    final fresh = await repository.fetchFreshFeed();
    final merged = applyPendingMutations(fresh, state.pendingMutations);

    state = state.copyWith(
      visiblePosts: merged,
      origin: DataOrigin.merged,
      isRefreshing: false,
    );

    await repository.saveFeedSnapshot(merged);
  } catch (error) {
    state = state.copyWith(
      isRefreshing: false,
      refreshError: error,
    );
  }
}
```

## Design checklist

Use staged state when the feature has any two of these:

- local cache-first rendering
- background refresh
- user mutations during refresh
- visible list/detail state that should remain stable
- non-destructive error UX

## Definition of done

A staged-state migration is complete when:

- cached state can render first
- refreshes are background-safe
- local actions do not disappear during refresh
- error handling is non-destructive
- reconciliation behavior is documented and test-covered
