# Riverpod Patterns for Cache-First Rendering

## Recommendation

For Riverpod-based projects, prefer an explicit UI state model rather than a raw `AsyncValue<List<T>>` when the feature needs:

- cached initial render
- refresh-in-place
- pending optimistic mutations
- non-destructive refresh errors

## Good fit

Use one of these already present patterns in the repo:

- `Notifier<TState>`
- `StateNotifier<TState>`
- `AsyncNotifier<TState>` with a custom state model

## Recommended state shape

```dart
class FeatureUiState {
  final List<Item> items;
  final bool isRefreshing;
  final Object? error;
  final List<PendingMutation> pendingMutations;
  final DataOrigin origin;

  const FeatureUiState({
    required this.items,
    required this.isRefreshing,
    required this.error,
    required this.pendingMutations,
    required this.origin,
  });
}
```

## Suggested controller flow

```dart
class FeatureNotifier extends Notifier<FeatureUiState> {
  @override
  FeatureUiState build() {
    _initialize();
    return const FeatureUiState(
      items: [],
      isRefreshing: false,
      error: null,
      pendingMutations: [],
      origin: DataOrigin.cache,
    );
  }

  Future<void> _initialize() async {
    final cached = await _repository.loadCached();
    if (cached != null && cached.isNotEmpty) {
      state = state.copyWith(
        items: cached,
        origin: DataOrigin.cache,
      );
    }
    unawaited(refresh());
  }

  Future<void> refresh() async {
    state = state.copyWith(isRefreshing: true, error: null);

    try {
      final fresh = await _repository.fetchFresh();
      final merged = _applyPendingMutations(
        fresh,
        state.pendingMutations,
      );

      state = state.copyWith(
        items: merged,
        isRefreshing: false,
        origin: DataOrigin.merged,
      );

      await _repository.saveSnapshot(merged);
    } catch (error) {
      state = state.copyWith(
        isRefreshing: false,
        error: error,
      );
    }
  }
}
```

## UI rules

When `items` are already visible:

- show pull-to-refresh or small inline refresh state
- do not replace the whole body with a loader
- surface refresh errors as inline status/snackbar/banner depending on the product style

## Provider design notes

- keep repository providers separate from state providers
- avoid putting persistence-specific DTOs in UI state
- keep merge logic testable outside widgets when possible
