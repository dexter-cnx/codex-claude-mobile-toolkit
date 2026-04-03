# Adoption Plan

## Objective

Introduce stronger repo discipline without destabilizing the current toolkit.

## Phase 1 — Additive
Add docs, checklists, and validation scripts.
No structural breaking changes.

Use:
- `docs/repo_discipline/`
- `templates/checklists/`
- `scripts/validate_toolkit.*`

## Phase 2 — Behavioral
Update project guidance so agents are expected to:
- run validation,
- produce review artifacts,
- and check accessibility/error handling.

Merge the suggestions from `AGENTS_APPEND_SUGGESTION.md`.

## Phase 3 — Workflow
Start using the new prompts:
- `prompts/validate_repo_release.md`
- `prompts/accessibility_pass.md`
- `prompts/error_handling_pass.md`
- `prompts/module_scaffold_pass.md`

## Phase 4 — CI
Enable `.github/workflows/toolkit-validate.yml`.

## Phase 5 — Refinement
After 2–4 weeks, review:
- which prompts are used,
- which checks are skipped,
- where docs remain unclear,
- and whether any repeated failure modes deserve new skills.
