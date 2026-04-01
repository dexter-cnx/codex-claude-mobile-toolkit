# GraphQL Cache Refactor

Retrofit an existing GraphQL-backed Flutter feature to behave more predictably with cache-first rendering and non-destructive refresh.

## Goal

Improve perceived performance and resilience without broad rewrites.

## Focus

- render cached list or detail data immediately when it is still useful
- refresh remote data in the background
- preserve visible content on refresh failure
- keep local-only overlays such as favorites intact
- clarify stale, refreshing, and failed-refresh state in the feature model

## Constraints

- do not move business logic into widgets
- do not depend blindly on normalized cache semantics without documenting assumptions
- do not erase useful visible data when a refresh fails
- do not mix app-owned persistence and GraphQL cache without an explicit boundary

## Output expectations

Return:

1. chosen refactor boundary
2. cache behavior before and after
3. state-model changes
4. tests added or recommended
5. verification results
