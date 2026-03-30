# Prompt: Apply Cache-First Rendering to One Existing Feature

You are working in an existing Flutter project.

Refactor **one feature only** to use cache-first rendering and staged state safely.

## Target feature

[PUT FEATURE NAME HERE]

Examples:

- Home feed
- Dashboard summary
- Vehicle service history list
- Notifications list
- Document list
- Activity timeline

## Requirements

- do not rewrite unrelated modules
- keep the change set small, reviewable, and production-friendly
- respect the current architecture and state management already used in the repo
- render cached/local data immediately when available
- fetch fresh data in background
- preserve optimistic/pending local user actions while refresh is running
- merge fresh remote data with pending actions before replacing visible state
- keep visible content on refresh failure
- persist the latest merged state locally

## Audit first

Before implementing, inspect this feature and summarize:

1. current data flow
2. current loading sequence
3. current local persistence or cache usage
4. risk of race conditions
5. best boundary for the refactor (repository, use case, notifier/controller, state model)

## Implementation rules

- avoid widget-level cache orchestration
- avoid mixing remote DTO logic into the UI layer
- avoid full-screen blocking loaders if cached content exists
- use the lightest suitable local persistence already available in the project
- keep error handling non-destructive

## Output format

1. feature audit
2. refactor plan
3. concrete code changes
4. staged state design
5. merge logic explanation
6. tests added or recommended
7. files changed

Implement real code changes, not generic examples.
