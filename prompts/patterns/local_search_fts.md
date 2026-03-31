# Local Search with SQLite FTS Pattern

Use this prompt when a Flutter feature needs scalable local full-text search rather than naive in-memory filtering.

## Goal

Design or implement search that:
- scales to medium or large local datasets,
- keeps query behavior consistent,
- preserves clean repository boundaries,
- presents responsive search UX.

## Required outputs

Produce:
1. searchable entity analysis,
2. schema/index design,
3. repository search API shape,
4. query / ranking strategy,
5. UI search state model,
6. migration or reindex strategy,
7. verification approach,
8. risks and edge cases.

## When to use

Good fits:
- notes,
- logs,
- journals,
- catalogs,
- inventory,
- saved documents,
- local knowledge bases.

## Design rules

- Do not use naive list filtering once dataset size or UX expectations justify indexing.
- Keep FTS concerns in the data layer.
- Expose search through a repository API that is easy for presentation code to consume.
- Keep index rebuild strategy explicit.

## UX guidance

Model:
- idle
- typing
- searching
- results
- noResults
- error
