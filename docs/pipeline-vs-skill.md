# Pipeline vs skill

This document prevents overlap and naming drift.

## Use a pipeline when

A task needs:

- multiple phases,
- coordinated verification,
- artifact output,
- cross-skill sequencing,
- or a stable end-to-end operating lane.

Examples:

- investigate a bug
- finalize a change
- audit a repo
- self-improve the toolkit

## Use a skill when

A task needs:

- one narrow reusable procedure,
- one main output type,
- a repeatable focused execution pattern.

Examples:

- review architecture boundaries
- review localization correctness
- review test coverage posture
- review platform configuration
- refactor safely
- scaffold a feature

## Naming guidance

Prefer verbs that match the role:

### Pipelines
- `finalize_*`
- `audit_*`
- `investigate_*`
- `review_*`
- `self_improve_*`

### Skills
- `flutter-review-*`
- `flutter-*-guard`
- `flutter-*-pattern`
- `flutter-*-checklist`

## Smell tests

A file is probably the wrong abstraction when:

- it tries to solve half the repository,
- it duplicates another file with slightly different wording,
- it contains long freeform advice but no execution contract,
- it cannot explain when it should and should not be used.

## Preferred shape

- broad lane -> pipeline
- narrow reusable step -> skill
- durable truth -> rule
- standardized output -> template
- explanation and rationale -> docs
