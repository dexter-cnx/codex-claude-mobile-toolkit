# CLAUDE.md

## How to operate in this repo

Read `AGENTS.md` first. Treat it as the primary source of truth for architecture, stack defaults, workflow selection, localization rules, and build optimization behavior.

This file exists to adapt the same toolkit conventions to Claude Code usage. Do not diverge from `AGENTS.md` unless the user explicitly asks for a different setup.
If the task is explicitly routed through Antigravity, use `antigravity/README.md` and the matching workflow as an additional execution layer, not as a replacement for the default Claude Code flow.

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

- **project foundation**
- **feature work**
- **localization maintenance**
- **architecture review**
- **persistence evolution**
- **build optimization**
- **plugin-style packaging**

If a request spans multiple categories, handle the dominant category first and then apply the others only where necessary.

---

## Build optimization behavior

For build optimization tasks:

1. run or define benchmark scope first
2. produce `.build-benchmark/benchmark-result.json`
3. produce `.build-benchmark/optimization-plan.json`
4. produce `.build-benchmark/optimization-plan.md`
5. stop before edits unless `.build-benchmark/approved-actions.json` exists
6. after fixes, produce `.build-benchmark/fix-report.md`
7. include before/after evidence in the report

Do not skip the approval gate for build-file changes.
