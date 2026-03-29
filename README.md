# Codex + Claude Mobile Toolkit

Workflow-first starter toolkit for Flutter projects using Codex-style agents and Claude Code.

## Goals
- keep shared architecture rules in one place
- provide reusable prompts and skills for common Flutter workflows
- make Riverpod + go_router + Isar + CSV-first localization a first-class preset
- keep the toolkit markdown-first and easy to browse in Obsidian
- prepare projects for optional plugin-style packaging later

## Default preset
This toolkit now treats the following stack as the default preset unless a project explicitly chooses otherwise:
- Flutter
- Riverpod
- go_router
- Isar
- easy_localization
- CSV-first localization source of truth
- Material 3

## Workflow model
The toolkit is organized around workflows rather than one giant instruction file.

Primary workflows:
1. scaffold or refresh a project foundation
2. add or extend a feature
3. maintain CSV-first localization
4. review architecture and coherence
5. evolve local persistence safely
6. package workflows in plugin-style form

## Repo map
- `AGENTS.md` — repo-wide conventions and default preset
- `CLAUDE.md` — Claude Code operating guidance aligned to `AGENTS.md`
- `prompts/` — reusable task prompts
- `skills/` — workflow-specific reusable skills
- `.codex-plugin/` — example plugin manifest
- `agents/` — example agent metadata
- `docs/` — supporting docs and migration guidance

## Recommended usage
### Codex-style agents
Point the agent at this repo and enable relevant local skills.

Examples:
- use the scaffold skill for a new Flutter foundation
- use the localization skill to update CSV-first i18n
- use the review skill after a major refactor

### Claude Code
In the target project:
1. place `AGENTS.md` at the root or keep this toolkit nearby
2. ask Claude to read `AGENTS.md` and `CLAUDE.md`
3. ask it to follow the matching prompt under `prompts/`
4. ask it to finish with a review pass

## Core docs
- `docs/core-vs-project-overlay.md`
- `docs/plugin-style-repo-model.md`
- `docs/presets/riverpod-go-router-csv.md`
- `docs/migration-audit.md`

## Next step
Use this repo as the shared toolkit layer, then keep product-specific rules in each app repo as an overlay.
