# Antigravity integration layer

This folder adds an Antigravity-friendly operating layer on top of the existing `codex-claude-mobile-toolkit` repository.

## Goals

- keep the current toolkit structure intact,
- add a clear separation between **rules**, **workflows**, and **task templates**,
- make every meaningful implementation flow **verification-first**,
- standardize artifact output,
- stay compatible with the existing Codex, Claude Code, and Grok Code entrypoints.

## Core operating idea

Antigravity is a **stricter workflow shell** around the same repository rules.

It should be used when the task benefits from:

- declared execution phases,
- consistent artifact output,
- repeatable sequencing across contributors or agents,
- explicit verification gates,
- documented MCP-assisted operating paths.

For smaller or direct coding tasks, the base toolkit flow may still be enough without Antigravity.

## How to use this layer

1. Read `AGENTS.md` at the repo root for global engineering rules.
2. Read `antigravity/rules/global.md` and `antigravity/rules/flutter.md`.
3. Pick a workflow from `antigravity/workflows/`.
4. Use a task template from `antigravity/task-templates/` if you need a ready-made shell prompt.
5. Use focused skills from `skills/`.
6. Return artifacts following `antigravity/artifacts/README.md`.

## Recommended workflow order

### Project creation or foundation work
- `bootstrap-project.md`

### Feature delivery
- `add-feature.md`
- `finalize-mobile-change.md`

### Bug fixing and investigation
- `investigate-flutter-bug.md`
- `bugfix-verify.md`

### Review and repository health work
- `review-mobile-change.md`
- `audit-mobile-repo.md`
- `refactor-review.md`

### Toolkit evolution
- `self-improve-toolkit.md`

## Compatibility boundary

This layer is additive.

It does not change the default meaning of `AGENTS.md`, `CLAUDE.md`, or `GROK.md`, and it should not be treated as a mandatory entrypoint for every task.

Expected impact on other agent surfaces:

- `Codex`: no required behavior change unless the task explicitly opts into an Antigravity workflow
- `Claude Code`: no required behavior change unless the task explicitly opts into an Antigravity workflow
- `Grok Code`: no required behavior change unless the task explicitly opts into an Antigravity workflow
- shared rules still come from the repository root and remain the common source of truth

## Verification baseline

Unless explicitly told otherwise, every non-trivial task should end with:

- `flutter pub get`
- `dart format .`
- `flutter analyze`
- `flutter test`

If the task changes UI behavior, also perform:

- at least one target smoke validation,
- screenshot or visual note when possible,
- explicit reporting of what remained unverified.

## Expected artifacts

Each completed Antigravity task should usually produce:

- task summary
- implementation report
- verification report
- risk log when relevant
- audit or root-cause artifact when the workflow calls for it

## Artifact locations

Use repo-level `templates/` for standard formats and `antigravity/artifacts/` for Antigravity-specific storage conventions.

See `antigravity/artifacts/README.md`.
