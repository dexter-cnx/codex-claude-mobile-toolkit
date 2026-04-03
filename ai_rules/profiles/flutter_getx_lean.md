# Profile: Flutter GetX Lean

Apply this profile when the project prefers pragmatic structure without excessive ceremony.

## Rules
- Keep GetX controllers focused and short.
- Introduce use cases only when business logic is non-trivial.
- It is acceptable for small features to have fewer files if boundaries remain clear.
- Keep data mapping explicit even in lean features.
- Avoid premature abstraction.

## Lean feature shape

```text
features/<feature_name>/
  presentation/
  domain/
  data/
```

Use fewer subfolders unless the feature grows.
