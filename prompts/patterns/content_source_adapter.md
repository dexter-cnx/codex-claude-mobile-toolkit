# Pattern Prompt: Content Source Adapter

Design a source adapter layer for a Flutter feature with one or more data providers.

## Requirements

- support `browse`, `latest`, `search`, `getDetail`, and `rehydrate`
- define a stable `PagedResult<T>`
- keep filter translation in the adapter layer
- avoid leaking provider-specific DTOs into presentation
- support future offline caching

## Ask for

- adapter interface
- repository orchestration
- cache policy
- error normalization
- test cases
- migration notes if retrofitting an existing feature
