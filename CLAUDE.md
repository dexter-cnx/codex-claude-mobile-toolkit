# CLAUDE.md

## How to operate in this repo
Read `AGENTS.md` first.
Treat it as the primary source of truth for architecture, stack defaults, workflow selection, and localization rules.

This file exists to adapt the same toolkit conventions to Claude Code usage.
Do not diverge from `AGENTS.md` unless the user explicitly asks for a different setup.

---

## Default operating sequence
For most tasks in a project using this toolkit, follow this order:
1. identify the workflow category
2. read the relevant prompt in `prompts/` if one exists
3. read the matching skill in `skills/` if one exists
4. inspect the current codebase before editing
5. make the smallest coherent set of changes that fully solves the task
6. end with a short coherence review

---

## Workflow categories
Map requests into one of these categories:
- **project foundation** → scaffold or refresh a project baseline
- **feature work** → add or extend a feature while preserving architecture
- **localization maintenance** → update CSV-first i18n flow and generated locale assets
- **architecture review** → check for drift, layering problems, localization misses, route inconsistencies, or provider sprawl
- **persistence evolution** → change Isar models or repositories carefully
- **plugin-style packaging** → describe or package workflows for agent reuse

If a request spans multiple categories, handle the dominant category first and then apply the others only where necessary.

---

## Stack defaults
Use these defaults unless the target project says otherwise:
- Flutter
- Riverpod
- go_router
- Isar
- easy_localization
- CSV-first localization source
- Material 3

When a project already has different choices, respect the project unless the user specifically asks to migrate.

---

## Code generation rules
When generating or editing code:
- keep code compile-friendly
- keep files focused and readable
- prefer pragmatic patterns over ceremony
- keep repository logic outside widgets
- keep route setup centralized
- keep provider organization comprehensible
- do not introduce backend/auth/cloud sync unless asked
- do not hardcode user-facing strings outside the localization workflow

---

## Localization behavior
When a task adds user-facing text:
1. update `assets/i18n/translations.csv`
2. make sure all supported locales have values
3. keep generator expectations intact
4. update generated locale files if the task includes generated artifacts

Do not invent parallel localization sources.

---

## Review pass checklist
Before finishing substantial tasks, quickly verify:
- routes are still coherent
- providers are scoped sensibly
- data changes match repository updates
- user-facing strings are localized
- imports and naming are consistent
- no unnecessary abstraction was introduced

---

## Prompt usage
Typical usage inside a target repo:
- for project bootstrap: use `prompts/new_project_riverpod.md`
- for new features: use `prompts/new_feature_riverpod.md`
- for review: use `prompts/review_architecture.md`

If a matching skill exists under `skills/`, use it as the more specific workflow guide.
