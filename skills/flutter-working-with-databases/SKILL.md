name flutter-working-with-databases
description Implements local structured persistence for Flutter apps using clear repository boundaries and migration-aware design. Use when the app stores substantial structured data locally.
metadata model last_modified

toolkit/manual-curated
Fri, 03 Apr 2026 16:00:00 +0700

# Working with Databases in Flutter

## Contents

  * Purpose
  * Use when
  * Do not use when
  * Required inputs
  * Deliverables
  * Workflow
  * Guardrails
  * Output contract
  * Verification checklist
  * Example request

## Purpose

Use this skill when local structured data is large enough, relational enough, or durable enough that a database is warranted.

## Use when

- storing normalized or queryable local data
- syncing remote data into local persistence
- supporting offline reads and background refresh
- implementing favorites, saved items, history, or structured caches

## Do not use when

- a simple key-value store is sufficient
- the task only needs ephemeral in-memory state
- the feature does not need durable structured persistence

## Required inputs

- data model
- query patterns
- migration expectations
- synchronization rules
- repository contracts
- platform constraints

## Deliverables

- schema or entity model
- DAO or repository persistence methods
- mapping rules between local models and domain models
- migration notes
- verification plan

## Workflow

1. Confirm the data really requires a database.
2. Design the schema around query patterns, not only object shape.
3. Keep persistence code out of presentation.
4. Define migration strategy early if the app will evolve.
5. Separate local entities from domain contracts where useful.
6. Make sync rules explicit if remote data is involved.

## Guardrails

- Do not let widgets speak SQL or persistence APIs directly.
- Do not skip migration planning when schema evolution is likely.
- Avoid unbounded growth without retention or cleanup rules.
- Keep sync ownership in one place.

## Output contract

- schema summary
- repository persistence flow
- migration notes
- sync/invalidation notes
- verification plan

## Verification checklist

- schema supports required queries
- persistence is behind a repository or DAO boundary
- migrations are considered
- sync rules are documented
- tests or manual verification cover critical queries

## Example request

“Add local persistence for saved searches and recent history, with clear repository boundaries and migration notes.”
