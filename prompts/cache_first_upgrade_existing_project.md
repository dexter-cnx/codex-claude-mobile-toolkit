# Prompt: Retrofit Cache-First Rendering into an Existing Flutter Project

You are a senior Flutter architect working inside an **existing production Flutter project**.

Your task is to retrofit the codebase with a **cache-first rendering** strategy and **staged state** behavior so that screens can render cached/local data immediately and refresh safely in the background.

## Core goals

- improve perceived performance
- avoid blocking first render when cached/local data exists
- preserve local optimistic user actions during background refresh
- avoid destructive refresh errors that wipe visible content
- keep changes incremental and reviewable

## Constraints

- this is an existing project; do not rebuild the app from scratch
- respect the current architecture, folder structure, naming conventions, and dependencies
- reuse the existing state management and local persistence already present in the repo
- prefer incremental refactor over broad rewrite
- keep public APIs backward-compatible when possible
- do not move business logic into widgets
- do not introduce a heavy generic abstraction unless multiple features truly need it

## Audit first

Before changing code, inspect the current codebase and identify:

1. which screens currently wait for network before first render
2. where repositories/services/use cases fetch remote data
3. whether local persistence already exists (Isar, Hive, SQLite, SharedPreferences, file cache, custom cache)
4. what state management approach is already used
5. where race conditions may happen if cached data and fresh data overlap with user interactions

## Scope control

Choose **one or two high-impact feature flows only** for the first pass.

Good examples:

- home feed
- dashboard summary
- activity list
- notification list
- service history list
- document list

Do not attempt to convert the entire app blindly in one pass.

## Required behavior for each selected flow

Implement this behavior:

1. load cached/local data first
2. render UI immediately if cached data exists
3. fetch fresh data in background
4. preserve pending optimistic user actions while refresh is running
5. merge fresh data with pending actions before committing visible state
6. persist the latest merged state back to local storage
7. keep existing visible content during refresh failures

## Staged state requirements

Where appropriate, introduce explicit state fields for:

- current visible state
- pending local mutations / optimistic actions
- refresh/loading status
- non-destructive error state
- optional state source such as cache/remote/merged

## UX rules

- avoid blank full-screen loaders if cached data exists
- prefer stale-while-revalidate behavior
- show subtle refresh indicators instead of blocking loaders
- do not wipe visible content on background refresh failure
- avoid flicker and unnecessary rebuilds

## Architecture guidance

- prefer repository-level and notifier/controller/viewmodel-level integration
- keep remote DTO concerns out of widgets
- keep cache orchestration out of widgets
- if the project uses Riverpod, stay with Riverpod
- if the project uses GetX, stay with GetX
- if the project uses Bloc/Cubit, stay with Bloc/Cubit
- if no cache exists yet, introduce the lightest suitable cache only for the selected feature

## Testing requirements

Add or update focused tests where practical:

- cached data renders before remote refresh completes
- user action survives overlapping background refresh
- refresh failure does not wipe visible content
- merged state is persisted correctly

## Deliverables

Return your work in this format:

1. brief audit of the current relevant architecture
2. chosen feature scope and why it was selected
3. incremental refactor plan
4. concrete code changes
5. explanation of race-condition handling
6. testing notes
7. list of files changed
8. follow-up recommendations for expanding the pattern gradually

Do not give only high-level advice. Make concrete, production-friendly changes in the existing project.
