# Profile: Flutter Riverpod + go_router

Apply this profile when the project uses Riverpod for state and `go_router` for navigation.

## Rules
- Keep providers feature-scoped whenever possible.
- Name providers and notifiers clearly and predictably.
- Keep domain logic outside UI providers when it can be isolated.
- `go_router` configuration should stay centralized and readable.
- Route data and deep-link entry points should be explicit.

## Suggested structure

```text
features/<feature_name>/
  presentation/
    providers/
    notifiers/
    pages/
    widgets/
  domain/
  data/
```

## Testing
- Prefer testing notifiers and pure domain logic independently.
- Keep route logic deterministic and easy to reason about.
