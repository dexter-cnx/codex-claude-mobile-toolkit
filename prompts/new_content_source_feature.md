# New Content Source Feature

You are adding a new content-browsing feature to a Flutter application that follows the toolkit conventions.

## Read first

- `AGENTS.md`
- `docs/patterns/source-adapter-pattern.md`
- `docs/patterns/filter-schema-pattern.md`
- `docs/patterns/backup-restore-rehydration.md`
- `templates/architecture/content_source_feature_template.md`

## Goal

Design and implement a content feature that supports:

- browse
- latest
- search
- filters
- pagination
- detail loading
- backup-safe stable identifiers

## Constraints

- preserve presentation / domain / data boundaries
- do not couple screens directly to provider-specific params
- use a single paged result contract
- keep filter semantics schema-driven
- prefer cache-safe loading behavior
- emit a verification summary

## Deliverables

1. proposed folder structure
2. domain contracts
3. data implementations
4. filter schema
5. state management plan
6. verification plan
7. concise implementation report

## Required design decisions

- stable ID strategy
- page-based vs cursor-based pagination
- default browse state
- persistence approach for filter state
- backup payload shape
- rehydration trigger policy
- error normalization

## Output format

### Assumptions
List grounded assumptions.

### Architecture plan
Explain the design.

### Files to add or edit
List concrete file paths.

### Implementation notes
Explain key tradeoffs.

### Verification
Provide exact checks to run.
