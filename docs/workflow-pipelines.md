# Workflow pipelines

This document explains the production workflow lanes that sit above individual skills.

## Why pipelines exist

A toolkit can become broad without becoming reliable.

When a repository only has rules and many isolated skills, agents often:

- skip important sequencing,
- verify inconsistently,
- perform shallow reviews,
- miss opportunities to capture reusable lessons.

Pipelines solve that by defining a repeatable execution lane.

## Pipeline inventory

### `finalize_mobile_change`
Use when implementation is complete and the change needs to be made review-ready.

Primary outcomes:

- verification summary
- quality review
- risk disclosure
- commit-readiness summary

### `audit_mobile_repo`
Use for repository health checks and structural audits.

Primary outcomes:

- scorecard
- issue inventory
- prioritized next steps

### `investigate_flutter_bug`
Use when the bug cause is uncertain.

Primary outcomes:

- root-cause analysis
- reproduction notes
- smallest safe fix proposal
- regression plan

### `review_mobile_change`
Use for a structured review pass when a full finalize lane is unnecessary.

Primary outcomes:

- findings
- recommendations
- verification expectations
- review summary

### `self_improve_toolkit`
Use to fold repeatable lessons back into the toolkit.

Primary outcomes:

- improvement routing decisions
- recommended file updates
- duplicate or drift reduction

## Execution pattern

Every pipeline should define:

1. **goal**
2. **inputs**
3. **files to inspect first**
4. **execution phases**
5. **verification expectations**
6. **required outputs**
7. **handoff or follow-up rules**

## Relationship to skills

A pipeline should orchestrate skills.  
A skill should not impersonate an entire pipeline unless that orchestration is the whole point of the skill.

Examples:

- `flutter-review-architecture` is a skill
- `flutter-review-change` is an orchestrator skill
- `review_mobile_change` is a pipeline prompt

## Relationship to Antigravity

Antigravity should mirror only the pipelines that benefit from stricter workflow shells and artifact expectations.

Mirror when:

- sequence matters,
- verification must be explicit,
- artifacts must be consistent across contributors,
- the task is common enough to justify a second shell.

Do not mirror every tiny prompt into Antigravity.
