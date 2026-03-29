# Codex + Claude Mobile Toolkit

Obsidian-friendly starter repo for **Flutter + Clean Architecture + Codex + Claude Code** workflows.

## Goals

- Reusable **skills** for Codex-style workflows
- Shared project conventions for **Codex** and **Claude Code**
- Flutter-specific prompts for project bootstrap and feature work
- MCP-ready config stubs for docs, repo utilities, and build status
- Markdown-first docs that are easy to keep in Git and browse in Obsidian

## Who this is for

This repo fits teams or solo developers who want AI coding agents to:

- scaffold Flutter projects consistently
- add features without breaking layer boundaries
- keep localization CSV-first
- run a final coherence pass after edits
- follow the same architecture rules across Codex and Claude

## Core idea

Use the same architecture rules in three places:

1. `AGENTS.md` for repo-wide guidance
2. `CLAUDE.md` for Claude Code behavior
3. `skills/*/SKILL.md` for Codex skill workflows

That gives you one source of truth for engineering conventions, while still fitting each tool's preferred format.

## Repo map

- `AGENTS.md` — repo-wide agent conventions
- `CLAUDE.md` — Claude Code-specific usage guidance
- `prompts/` — reusable prompts for new project / new feature work
- `skills/` — Codex-style reusable skills
- `plugins/` — example Codex plugin packaging layout
- `.codex/config.toml` — project-scoped Codex config sample
- `mcp/` — MCP notes and example config snippets
- `docs/` — supporting architecture and rollout docs

## Recommended rollout

### Phase 1

Use the repo directly with:

- `AGENTS.md`
- `CLAUDE.md`
- `prompts/new_project.md`
- `prompts/new_feature.md`
- three core skills:
  - `flutter-project-scaffold`
  - `flutter-feature-clean-architecture`
  - `flutter-localization-csv`

### Phase 2

Wire in MCP and repo utilities:

- docs lookup
- repo tree / layer checks
- build status

### Phase 3

Package selected skills as Codex plugins for reuse across projects.

## Suggested usage

### Codex

Point Codex at this repo and enable project skills from `./skills`.

Then invoke tasks like:

```text
Use @flutter-project-scaffold to create a new Flutter app baseline.
```

```text
Use @flutter-feature-clean-architecture to add a vehicle reminders feature.
```

### Claude Code

Open the repo containing this toolkit, keep `CLAUDE.md` at the project root, and reference prompts from `prompts/`.

Typical flow:

1. Ask Claude to read `AGENTS.md` and `CLAUDE.md`
2. Ask it to follow `prompts/new_project.md` or `prompts/new_feature.md`
3. Ask it to finish with the coherence checklist from `skills/flutter-refactor-coherence-pass`

## Notes

- The Codex plugin folders here are **starter examples**.
- The skill folders here are usable as a local authoring base.
- The Claude support is intentionally simple: clear root instructions, reusable prompts, and shared conventions.

## Next step

Copy this repo into your own toolkit repo, then tailor:

- state management choice
- router choice
- localization package details
- design system rules
- MCP server commands
