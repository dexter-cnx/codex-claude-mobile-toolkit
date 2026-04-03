# Release Readiness Standard

## Release gate questions

A change is release-ready only if the answer is known for each item below:

1. What changed?
2. What user flows are affected?
3. What validation ran?
4. What was skipped?
5. What localization impact exists?
6. What accessibility impact exists?
7. What migration or upgrade risk exists?
8. What rollback plan exists, if any?
9. What follow-up work remains?

## Required release evidence

Use `templates/checklists/release-readiness.md`.

## Severity guidance

### Low risk
Docs, internal prompts, comments, non-executed templates.

### Medium risk
Feature logic, routing, state management, API contract mapping, localization generation.

### High risk
Authentication, payment, storage, destructive operations, app startup, migrations, shared architecture changes.

## Rule for agent-generated work

If risk is medium or high:
- include a release note summary,
- include explicit residual risk,
- and include next verification steps.
