---
name: flutter-graphql-feature
description: Deliver a read-mostly GraphQL-backed Flutter feature with operation documents, code generation discipline, clean architecture boundaries, and cache-aware browse/detail UX.
allowed-tools: Read, Write, Edit, Grep, Glob, Bash
---

# Flutter GraphQL Feature

Use this skill when a Flutter project needs a real GraphQL-backed feature rather than an ad hoc client call.

This skill is intended for browse/detail or catalog-style flows such as:

- Pokédex features,
- media catalogs,
- encyclopedia apps,
- or any feature where GraphQL is the primary read-side source.

## Use this skill when

- a feature needs GraphQL list/detail/search behavior
- operation documents should be part of the repo
- code generation should be reproducible and reviewable
- local-only state such as favorites or recent history must coexist with remote data
- cache-first rendering matters for perceived performance

## Do not use this skill when

- the project has only one trivial GraphQL call
- the task is purely about GraphQL transport setup with no real feature boundary yet
- the main problem is mutation-heavy transactional logic rather than read-mostly browse/detail behavior
- the app is still a disposable proof of concept

## Objectives

1. define operation documents by user flow
2. keep GraphQL artifacts in the data boundary
3. generate request/response types reproducibly
4. map generated outputs to domain entities or read models
5. deliver list/detail/search UX with loading, empty, error, and stale-refresh states
6. preserve local-only overlays such as favorites or recents
7. verify nullability and partial-data behavior

## Process

### 1. Audit the feature boundary

Inspect:

- target screen or screens
- state management surface
- current repository contracts
- caching or local persistence already in place
- local-only user state that must overlay remote content

Identify:

- list flow
- detail flow
- related entity flow
- search/filter flow
- compare flow if relevant

### 2. Define operation documents first

Before writing repositories or UI code:

- define fragments for repeated shapes
- define one list/search operation if needed
- define one detail operation if needed
- split optional or heavy sections only when that improves resilience or payload cost

Avoid one giant everything-query unless the screen genuinely needs it.

### 3. Choose the GraphQL boundary inside the feature

Keep these concerns in the data layer:

- operation documents
- generated artifacts
- client execution
- mapper logic
- cache coordination

Keep these concerns out of widgets:

- GraphQL strings
- generated response traversal
- field nullability branching beyond display-only fallback rules

### 4. Map generated output to stable models

Prefer:

- domain entities for reusable business concepts
- feature read models when the data is screen-specific

Do not hand the raw generated response object to the whole UI tree.

### 5. Design explicit state

State should commonly represent:

- visible data
- loading state
- stale/refreshing state
- error state
- empty state
- source metadata such as cache, remote, or merged

### 6. Compose local-only state explicitly

Typical overlays:

- favorite ids
- recent history
- saved compare pairs
- saved team selections

Keep these in local persistence and compose them at repository or state-layer boundaries.

### 7. Verify risky paths

At minimum verify:

- operation documents match the feature need
- generated code compiles cleanly
- mapper correctness
- null fields do not crash the screen
- cached render appears before remote refresh when applicable
- refresh failure preserves usable visible content

## Output expectations

When applying this skill, produce:

1. feature boundary summary
2. operation documents added or changed
3. repository and mapper design
4. cache and refresh behavior explanation
5. tests added or recommended
6. verification results

## Anti-patterns

Avoid these:

- queries in widgets
- handwritten duplicate DTOs for generated response types
- leaking generated models everywhere
- assuming non-null for convenience
- local-only state mixed into remote cache without boundary rules
- broad refresh behavior that blanks usable content

## References

Read these references before implementation:

- `references/operation-design.md`
- `references/repository-boundary.md`
- `references/state-shape.md`
- `references/testing-checklist.md`