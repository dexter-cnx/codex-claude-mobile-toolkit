# flutter-offline-content-feature

## Purpose

Use this skill when a content-heavy feature must remain useful with degraded or absent connectivity.

## Read first

- `AGENTS.md`
- `docs/patterns/backup-restore-rehydration.md`
- `docs/patterns/source-adapter-pattern.md`
- `docs/patterns/cross-platform-capability-matrix.md`

## Focus

- local-first feature behavior
- cache-safe rendering
- export / restore resilience
- rehydration after restore
- predictable sync boundaries

## Produce

- offline policy
- storage boundaries
- rehydration queue design
- export payload recommendations
- verification plan

## Verification

- cached results render first when available
- restored minimal records remain usable
- rehydration failures do not destroy local data
- platform caveats are documented
