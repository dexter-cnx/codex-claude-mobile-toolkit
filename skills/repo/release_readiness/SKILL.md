# Release Readiness Skill

## Purpose

Use this skill to determine whether a change is ready to merge or release.

## Inputs

- change summary or diff context
- affected files
- validation results if available

## Process

1. identify the scope of change
2. classify risk
3. verify validation coverage
4. inspect accessibility and error-handling implications
5. identify residual risk
6. produce a merge/release recommendation

## Outputs

Produce:
- change summary
- risk level
- validation summary
- missing checks
- recommended next actions

## References

- `docs/repo_discipline/validation-standard.md`
- `docs/repo_discipline/release-readiness-standard.md`
- `templates/checklists/release-readiness.md`
