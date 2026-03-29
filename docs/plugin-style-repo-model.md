# Plugin-Style Repo Model

## Goal
This toolkit borrows the useful parts of a plugin-style repository layout without requiring every project to implement full plugin packaging from day one.

## Core idea
A repository becomes easier for agents to use when it is self-describing.
That means separating:
- repo-wide conventions
- workflow-specific prompts
- reusable workflow skills
- optional metadata for packaging or discovery

## Recommended layers
### 1. Root conventions
- `AGENTS.md`
- `CLAUDE.md`

These describe the default operating model and stack choices.

### 2. Task prompts
- `prompts/*.md`

These are user-facing entry points for common workflows.
They should map to real tasks, not abstract architecture categories.

### 3. Workflow skills
- `skills/*/SKILL.md`

These are reusable, narrower workflow bundles that agents can invoke or imitate.

### 4. Optional metadata
- `.codex-plugin/plugin.json`
- `agents/openai.yaml`
- MCP notes or config stubs

These make the repo more discoverable and more portable for future packaging.

## Why this helps
A plugin-style layout reduces confusion by making it clear:
- what the repo expects
- which workflow to use for a task
- where shared rules live
- which parts are reusable across projects

## Minimal adoption path
A repo does not need the full packaging surface immediately.
A practical adoption sequence is:
1. root conventions
2. prompts
3. skills
4. optional plugin metadata
5. optional MCP integration

## Recommended practice
Keep the plugin-style layer lightweight.
Do not create metadata or packaging files with no real use.
Add them when they improve discoverability, consistency, or reuse.
