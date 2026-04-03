---
name: agent-operator-stack
description: Use when defining or reviewing the tooling and session operating model around a repository that uses this toolkit.
---

# Agent Operator Stack

## Purpose

This skill helps the agent design a practical operator environment around the toolkit without turning personal tooling preferences into repository requirements.

## Use this skill when

- the user wants to adapt a personal tooling stack into the toolkit,
- the repo is growing into multi-agent or multi-session work,
- sessions are becoming hard to track,
- memory or handoffs are inconsistent,
- the team wants a portable operator model.

## Core principles

1. Repository-native assets come first.
2. External tools are optional adapters.
3. Every adoption needs a clear operational payoff.
4. Every optional tool needs a fallback.
5. The output must end in commit-ready documentation.

## Procedure

### Step 1 - Inspect the repository operating model
Identify:
- prompt entrypoints
- reusable skills
- memory conventions
- review paths
- agent surfaces

### Step 2 - Classify the source tools
For each tool or category, assign one:
- adopt
- defer
- reject

Adopt only if it improves:
- session management
- reproducibility
- memory durability
- review quality
- handoff quality

### Step 3 - Translate into toolkit-native artifacts
Prefer creating:
- docs
- prompts
- templates
- memory notes

Avoid inventing hard dependencies.

### Step 4 - Define topology
Document:
- role topology
- lane topology
- session naming
- branch/worktree model
- handoff contract

### Step 5 - Produce outputs
Return:
- assessment
- recommended files
- migration steps
- rationale for exclusions

## Output standard

Write as if the result will be merged into `codex-claude-mobile-toolkit`.
Be specific, portable, and implementation-minded.
