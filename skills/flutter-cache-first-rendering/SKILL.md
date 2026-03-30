---
name: flutter-cache-first-rendering
description: Retrofit cache-first rendering, staged state, and stale-while-revalidate UX into existing Flutter features without broad rewrites.
allowed-tools: Read, Write, Edit, Grep, Glob, Bash
---

# Flutter Cache-First Rendering

Use this skill when you need to improve perceived performance in an **existing Flutter project** by rendering cached/local data immediately and refreshing in the background.

This skill is designed for real projects that already have structure, state management, repositories, and local persistence. It emphasizes **incremental retrofit**, not greenfield redesign.

## Use this skill when

- a screen blocks on remote data before first render
- the app already has local persistence or can support a lightweight snapshot cache
- users revisit the same content frequently
- refreshes should not wipe visible content
- optimistic local actions may overlap with background refresh

## Do not use this skill when

- the feature is truly one-shot and local snapshot provides no UX benefit
- the feature is purely transactional and should never show stale data
- the team has not yet identified a stable feature boundary
- a broad architectural rewrite is being attempted without evidence

## Objectives

1. render usable cached/local content immediately
2. refresh remote data in background
3. preserve pending local user actions during refresh
4. merge remote data safely before committing visible state
5. persist the latest merged state
6. keep refresh failures non-destructive

## Process

### 1. Audit the existing feature

Inspect:

- widget/page entry points
- controller/notifier/viewmodel/bloc/cubit
- use cases and repositories
- local storage implementation
- refresh triggers
- current loading and error UX

Identify:

- whether the initial load blocks UI
- whether local snapshots already exist
- whether pending mutations can conflict with refresh

### 2. Choose the smallest safe boundary

Prefer changes in:

- repository layer
- state model
- notifier/controller/viewmodel

Avoid widget-level hacks.

### 3. Add cache-first behavior

Refactor the selected feature to:

- load cached snapshot first
- emit visible state immediately if present
- refresh in background
- merge incoming remote data with pending local mutations
- persist merged result

### 4. Add staged state if needed

Use staged state when the feature has:

- cache-first render
- background refresh
- optimistic local actions
- non-destructive refresh errors

A practical state often needs:

- visible data
- `isRefreshing`
- `error`
- `pendingMutations`
- source such as `cache`, `remote`, or `merged`

### 5. Preserve UX stability

Rules:

- no full-screen loader when usable cached data exists
- no destructive replacement of visible state on refresh failure
- no blind overwrite by fresh remote data
- no unnecessary flicker

### 6. Test the risky paths

At minimum, verify:

- cached content renders before refresh completes
- optimistic user action survives overlapping refresh
- refresh failure preserves visible content
- merged result persists correctly

## Output expectations

When applying this skill, produce:

1. feature audit
2. chosen refactor boundary
3. concrete code changes
4. race-condition handling explanation
5. tests added or recommended
6. next-step rollout advice

## Anti-patterns

Avoid these:

- rewriting the entire architecture
- introducing a generic cache engine too early
- putting cache merge logic in widgets
- wiping visible content during refresh errors
- clearing pending mutations before reconciliation is confirmed

## References

Read these references before implementation:

- `references/architecture.md`
- `references/riverpod-patterns.md`
- `references/staged-state.md`
- `references/testing-checklist.md`
