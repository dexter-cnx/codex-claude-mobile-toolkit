# Antigravity Integration Layer

This folder adds an Antigravity-friendly operating layer on top of the existing `codex-claude-mobile-toolkit` repository.

## Goals
- Keep the current toolkit structure intact.
- Add a clear separation between **rules**, **workflows**, and **task templates**.
- Make every implementation flow **verification-first**.
- Make Flutter/Dart MCP setup explicit and repeatable.
- Stay compatible with the existing Codex and Claude Code entrypoints.

## How to use
1. Read `AGENTS.md` at the repo root for global engineering rules.
2. Read `antigravity/rules/global.md` and `antigravity/rules/flutter.md`.
3. Pick a workflow from `antigravity/workflows/`.
4. Use a task template from `antigravity/task-templates/` if you need a ready-made prompt.
5. Return artifacts following `antigravity/artifacts/README.md`.

## When to use this layer

Use Antigravity when you want a more structured execution path than a direct prompt-and-edit flow.

Good fits:
- feature work that benefits from a declared workflow,
- bugfix or optimization tasks with strict verification expectations,
- tasks that should always produce consistent artifacts,
- Flutter/Dart MCP-driven work that needs explicit operating steps.

For simpler or ad hoc implementation tasks, the base toolkit flow may be enough without Antigravity.

## Compatibility boundary

This layer is additive.
It does not change the default meaning of `AGENTS.md` or `CLAUDE.md`, and it should not be treated as a mandatory entrypoint for every task.

Expected impact on other agent surfaces:
- `Codex`: no required behavior change unless the task explicitly opts into an Antigravity workflow.
- `Claude Code`: no required behavior change unless the task explicitly opts into an Antigravity workflow.
- Shared rules: still come from the repo root and remain the common source of truth.

## Recommended workflow order
- New project: `bootstrap-project.md`
- New feature: `add-feature.md`
- Offline-first feature: `implement_offline_first_feature.md`
- Refactor/review: `refactor-review.md`
- Localization changes: `localization-update.md`
- Build issues: `bugfix-verify.md` or `build-optimize.md`

## Verification baseline
Unless explicitly told otherwise, every task should end with:
- `flutter pub get`
- `dart format .`
- `flutter analyze`
- `flutter test`

If the task changes UI behavior, also perform a smoke validation on at least one target.

## Expected artifacts
Each completed task should produce:
- task summary
- implementation report
- verification report
- risk log (if relevant)
