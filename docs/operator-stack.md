# Operator stack

This document defines how to assemble a practical operator environment around the toolkit.

## Goal

Create a stack that helps a developer run:
- one planning lane
- one implementation lane
- one review lane
- one documentation or memory lane

without turning the toolkit into a hard-coded app bundle.

## Baseline operator stack

## Layer A — Required
These remain repository-native and should exist in every serious project that uses the toolkit.

- `AGENTS.md`
- agent-specific control files
- `prompts/`
- `skills/`
- `templates/`
- `project_memory/`

## Layer B — Strongly recommended
These make daily operation smoother.

- multi-session terminal or UI workflow
- branch or worktree isolation
- note capture workflow
- repeatable review lane
- verification lane

## Layer C — Optional accelerators
These are situational.

- mobile companion tools
- private network access
- self-hosted bookmark or WebDAV services
- session dashboards
- usage meters

## Standard role topology

### Lead / planner
Responsibilities:
- define scope
- choose workflow entrypoint
- break work into lanes
- decide merge strategy

### Builder
Responsibilities:
- implement isolated changes
- keep feature boundaries clean
- produce code notes

### Reviewer
Responsibilities:
- test assumptions
- run review prompts
- detect architectural drift

### Memory / docs operator
Responsibilities:
- update decision logs
- summarize implementation choices
- create repository-native documentation updates

## Session naming convention

Use names that preserve role clarity:

- `lead-plan`
- `build-feature-<name>`
- `review-feature-<name>`
- `memory-update-<name>`

## Branch convention

Examples:
- `plan/<feature-name>`
- `feat/<feature-name>`
- `review/<feature-name>`
- `docs/<feature-name>-memory`

## Minimum handoff contract

Every active lane should emit:
- current objective
- files touched
- open questions
- constraints
- next safe step
- verification status

## Stack selection matrix

### Minimal stack
Use when:
- single developer
- small feature
- short-lived branch

Needs:
- terminal
- toolkit prompts
- toolkit skills
- markdown notes

### Standard stack
Use when:
- medium feature
- multiple active sessions
- verification matters

Needs:
- multi-session shell or UI
- explicit role lanes
- project memory updates
- review prompt pass

### Advanced stack
Use when:
- long-running repo
- multiple devices
- personal research and infra matter
- self-hosted services add value

Needs:
- private network access
- bookmark or reading capture
- WebDAV or sync backend
- mobile monitoring
- optional control-plane tooling

## Anti-bloat rule

Do not add a tool to the official stack unless it improves at least one of:
- session clarity
- reproducibility
- handoff quality
- verification quality
- memory durability

Otherwise document it in personal notes, not in the toolkit.
