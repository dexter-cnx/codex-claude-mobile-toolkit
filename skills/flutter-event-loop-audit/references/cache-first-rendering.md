# Cache-First Rendering

## Goal

Improve perceived performance by showing useful state as early as possible.

## Prefer

1. render shell quickly
2. show local/cached data when available
3. indicate refresh state without blocking the whole screen
4. merge in remote updates afterward

## Avoid

- blank loading screens while local data exists
- waiting for remote fetch before rendering obvious cached content
- replacing entire screen state when only part changed

## Review questions

- does local state exist but remain unused during startup?
- does refresh unnecessarily block interaction?
- does the app throw away cached content before remote completion?
- are append flows incremental or full-list replacement?
