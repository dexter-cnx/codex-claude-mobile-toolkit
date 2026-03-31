# New Catalog Feature

Add or extend a read-mostly REST catalog feature inside an existing Flutter project.

## Goal
Deliver a feature that keeps list/detail browsing fast and reliable even when the API is imperfect.

## Required behavior
- cache-first list and detail rendering
- explicit loading, success, empty, error, and stale-refresh states
- local favorites or recently viewed state when relevant
- lazy loading for related resources unless eager loading is clearly justified

## Expected architecture
- presentation for UI composition and wiring
- domain for entities, contracts, and use cases
- data for DTOs, mappers, and repositories

## Constraints
- no Dio in widgets
- no JSON parsing in widgets
- no DTO leakage into presentation
- no hidden refresh behavior

## Output expectations
Return:
1. changed files
2. cache behavior used
3. verification results
4. any known limitations
