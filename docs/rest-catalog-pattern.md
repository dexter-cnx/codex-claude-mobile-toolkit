# REST Catalog Pattern for Flutter Projects

## Purpose
This document defines the recommended delivery pattern for read-mostly Flutter apps backed by public or semi-public REST APIs.

This pattern is particularly suitable for:
- movie catalogs,
- encyclopedia-style apps,
- browse/detail experiences,
- public API demos intended to feel production-grade.

## Characteristics of the pattern
A REST catalog app usually has:
- list pages,
- detail pages,
- search or filter,
- local-only user state,
- high tolerance for stale but useful data,
- relatively low write complexity.

## Recommended architecture
Use a feature-first structure with `presentation/`, `domain/`, and `data/`.

### Typical features
- catalog list
- item detail
- favorites
- recently viewed
- search or filters
- optional related entity browsing

## Data-flow pattern
### List page
1. read cached data if present
2. render immediately if the data is still useful
3. fetch remote data
4. persist updated result
5. refresh UI without jarring the user

### Detail page
1. load cached detail if available
2. render immediately
3. fetch remote detail
4. update cache and UI
5. load related resources lazily when the user expands those sections or navigates deeper

## Why this pattern works
Public APIs are often less reliable than product-owned backends. Cache-first rendering reduces perceived latency and helps preserve usefulness during temporary failures.

## Suggested local persistence
Persist at least:
- cached list payloads or mapped read models,
- cached detail payloads or mapped read models,
- favorite ids,
- recently viewed ids.

## Recommended UI states
Every data-backed screen should explicitly support:
- loading
- success
- empty
- error
- stale cached content while refreshing

## Common mistakes
- treating a public API like a low-latency private backend,
- loading all related resources eagerly,
- coupling widgets to JSON shape,
- hiding partial or stale-data behavior,
- forgetting local-only user state.

## Verification expectations
For a REST catalog feature, verify:
- DTO parsing
- mapper correctness
- repository success and failure paths
- empty state handling
- cache-backed rendering behavior
- favorite and recent persistence if present
