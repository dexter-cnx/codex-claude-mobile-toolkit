# prompts/analyze_flutter_build.md

Read `AGENTS.md` first.

## Goal

Analyze Flutter build performance and generate a reviewable optimization plan before making any build-related edits.

## Required outputs

Write all artifacts under `.build-benchmark/`:

- `benchmark-result.json`
- `benchmark-summary.md`
- `optimization-plan.json`
- `optimization-plan.md`

## Rules

- benchmark first
- record failed or skipped steps explicitly
- include evidence for every proposed action
- include risk, expected impact, affected files, and rollback note
- stop before edits unless approval exists
