# Offline-First Repository Pattern

Use this prompt when designing or implementing a Flutter feature where the product must remain useful without a network connection.

## Goal

Build the feature so that:
- local storage is the primary runtime source of truth,
- writes succeed locally first,
- network work is deferred or synchronized separately,
- UI state reflects local data availability and sync status,
- remote systems are treated as optional continuity layers.

## Required outputs

Produce:
1. assumptions,
2. feature data flow,
3. storage and repository boundary design,
4. sync metadata design if cloud sync exists,
5. state model for loading / stale / syncing / conflict / failed,
6. implementation notes,
7. verification notes,
8. known risks and follow-ups.

## Design rules

- Keep local persistence behind a repository interface.
- Write locally first unless the feature is explicitly online-only.
- Track dirty/pending sync status separately from the actual domain data.
- Do not let temporary network failure destroy core feature usability.
- Do not hide sync failures; make them observable to the user where it matters.

## State model guidance

Model at least:
- initial
- loading
- loaded
- empty
- error
- stale/cached
- syncing
- syncFailed
- conflictDetected

## Anti-patterns

Do not:
- block all writes on network availability,
- couple widgets directly to storage APIs,
- make sync success a prerequisite for local save success.
