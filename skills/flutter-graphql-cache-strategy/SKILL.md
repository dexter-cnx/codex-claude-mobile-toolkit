---
name: flutter-graphql-cache-strategy
description: Define or retrofit cache-aware behavior for GraphQL-backed Flutter features, including cache-first render, stale-refresh state, normalized-cache boundaries, and local-only overlays.
allowed-tools: Read, Write, Edit, Grep, Glob, Bash
---

# Flutter GraphQL Cache Strategy

Use this skill when a GraphQL-backed Flutter feature needs a clear caching model rather than vague client defaults.

## Use this skill when

- the feature should render cached data before refresh completes
- normalized cache behavior is confusing the implementation
- local-only overlays such as favorites or recents need a clear boundary
- detail pages should survive refresh failure without blanking the UI
- the team needs predictable stale/refresh semantics

## Do not use this skill when

- the feature is one-shot and cache has no UX value
- the main task is schema/codegen setup
- the issue is unrelated to caching, such as layout-only work

## Objectives

1. define list and detail cache behavior
2. separate app-owned local persistence from GraphQL client cache
3. expose stale/refresh state explicitly
4. avoid destructive refresh behavior
5. verify cache hit, miss, and refresh-failure paths

## Process

### 1. Audit current behavior

Inspect:

- current client cache settings
- repository read flow
- current loading and error states
- local persistence already used by the feature
- whether visible content is wiped on refresh failure

### 2. Choose explicit feature behavior

For each screen decide:

- cache-first, network-first, or hybrid
- when a stale indicator appears
- what happens on refresh failure
- which sections can be partial
- whether related resources are lazy-loaded

### 3. Define cache boundary rules

Make clear what lives in:

- GraphQL client cache
- app-owned local persistence
- state layer only

A practical rule for catalog apps:

- use client or local cached remote reads for browse/detail responsiveness,
- keep favorites, recent history, and saved collections in app-owned persistence.

### 4. Refine state shape

Typical additions:

- `isRefreshing`
- `isStale`
- `source`
- `lastUpdated`
- `partialSections`

### 5. Verify risky paths

At minimum verify:

- cached content renders before refresh completes when expected
- refresh failure preserves visible content
- local-only overlays remain intact after refresh
- partial sections do not collapse the whole screen unnecessarily

## Output expectations

When applying this skill, produce:

1. current behavior summary
2. target cache rules by screen
3. state-model adjustments
4. tests added or recommended
5. verification results

## Anti-patterns

Avoid:

- "the client cache handles it" with no concrete policy
- wiping visible content during refresh failure
- storing app-owned user state in transport cache
- assuming all cached data is equally trustworthy for every screen

## References

Read these references before implementation:

- `references/cache-boundaries.md`
- `references/stale-refresh-ux.md`
- `references/verification.md`