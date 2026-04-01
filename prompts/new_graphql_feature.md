# New GraphQL Feature

Add or extend a read-mostly GraphQL-backed feature inside an existing Flutter project.

## Goal

Deliver a feature that keeps list/detail browsing fast and reliable while preserving clear boundaries between GraphQL operations, generated artifacts, domain models, and UI state.

## Required behavior

- define explicit GraphQL operation documents before implementation
- use generated GraphQL types or requests rather than handwritten duplicate response DTOs
- map generated outputs into domain entities or stable feature read models
- support loading, success, empty, error, and stale-refresh states
- preserve useful cached data during refresh failures
- keep local-only user state separate from remote GraphQL cache when relevant

## Expected architecture

- presentation for UI composition and wiring
- domain for entities, contracts, and use cases
- data for operations, generated artifacts, mappers, and repositories

## Constraints

- no GraphQL query strings in widgets
- no generated model leakage into presentation without explicit justification
- no hidden codegen step that is missing from the change summary
- no broad "everything query" unless the screen genuinely requires it
- no destructive refresh that wipes usable cached content

## Output expectations

Return:

1. changed files
2. operation documents added or changed
3. codegen impact
4. cache behavior used
5. verification results
6. known limitations or follow-up work