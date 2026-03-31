# Flutter Local Search with SQLite FTS

## Purpose

This skill helps design and implement scalable local full-text search in Flutter using SQLite FTS patterns.

## Operating rules

1. Keep search SQL and indexing in the data layer.
2. Expose a clean repository API to presentation.
3. Define how index updates happen on create/update/delete.
4. Model search UX explicitly.
5. Plan for rebuild/reindex when schema evolves.
