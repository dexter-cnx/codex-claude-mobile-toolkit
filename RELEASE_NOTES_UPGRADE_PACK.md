# Upgrade Pack Release Notes

## Summary
This pack prepares the toolkit for a cleaner production-grade operating model by adding:
- a stronger root README,
- shared rule composition,
- a dedicated REST catalog lane,
- Antigravity additions for catalog delivery.

## New files
- `agents/shared/*`
- `docs/rest-catalog-pattern.md`
- `prompts/new_catalog_project.md`
- `prompts/new_catalog_feature.md`
- `skills/flutter-rest-catalog-feature/*`
- `templates/rest-catalog-audit.md`
- `antigravity/rules/00-read-order.md`
- `antigravity/workflows/07-rest-catalog-feature.md`
- `antigravity/task-templates/catalog-feature-task.md`
- `antigravity/artifacts/rest-catalog-feature-report.md`

## Updated files included in this pack
- `README.md`
- `AGENTS.md`
- `CLAUDE.md`
- `antigravity/README.md`

## Maintainer action items after merge
- validate paths against the latest upstream tree
- update any conflicting root files manually if upstream has changed
- add links from `docs/skill-workflow-map.md` if desired
- run repo validation before pushing
