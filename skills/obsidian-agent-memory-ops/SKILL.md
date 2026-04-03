---
name: obsidian-agent-memory-ops
description: Use when connecting Obsidian-style personal knowledge workflows to repository-native project memory without losing implementation-critical context.
---

# Obsidian Agent Memory Ops

## Purpose

This skill defines how to use note-taking and PKM workflows as an acceleration layer for agent-driven development.

## Use this skill when

- research notes need to become repository knowledge,
- decision logs are missing,
- handoffs are weak,
- a personal vault is being used alongside project memory,
- the user wants Obsidian-friendly markdown structures.

## Operating rules

1. The repository is the source of truth for implementation-affecting memory.
2. External notes may start the thought process, but repository files must hold durable project decisions.
3. Notes should be promotable into docs, templates, or project memory with minimal rewrite.

## Procedure

### Step 1 - Identify note type
Classify the material as:
- research
- decision
- handoff
- pattern
- backlog seed

### Step 2 - Determine promotion threshold
Promote to the repository if the note affects:
- implementation behavior
- architecture
- prompt routing
- verification
- future contributor understanding

### Step 3 - Normalize
Convert the note into:
- a doc,
- a project memory entry,
- a template,
- or a pattern prompt.

### Step 4 - Link
Record:
- source note
- canonical repository path
- related feature or subsystem
- follow-up date if needed

## Output standard

Prefer clean markdown with stable headings and Obsidian-friendly structure.
Avoid vague retrospective prose.
