---
name: toolkit-skill-author
description: Use when creating, refining, or reviewing a skill inside codex-claude-mobile-toolkit. Best for drafting skill scope, trigger wording, structure, evaluation prompts, iteration loops, and maintenance decisions.
---

# Toolkit Skill Author

This skill helps maintain the toolkit's own skills as durable assets.

## Goal

Create skills that are:
- narrow enough to trigger reliably
- broad enough to be reusable
- easy to maintain
- connected to prompts, templates, and verification assets

## Authoring loop

### 1. Define the job
State:
- what the skill should do
- what it should not do
- when it should trigger
- what inputs it expects
- what outputs it should produce

### 2. Draft the skill
Include:
- frontmatter
- purpose
- workflow
- output format
- anti-patterns
- companion assets

### 3. Create evaluation prompts
Test:
- obvious trigger cases
- near-miss cases
- ambiguous cases
- misuse cases

### 4. Review output quality
Check:
- does the skill stay on scope?
- does it reduce ambiguity?
- does it improve consistency?
- does it connect to real toolkit workflows?

### 5. Refine
Tighten:
- description wording
- trigger boundaries
- output structure
- anti-pattern language
- companion references

## Quality bar

A good toolkit skill should:
- feel operational, not theoretical
- reduce repeated prompting
- map to a recurring delivery lane
- connect to existing repo assets

## Required review questions

Before merging a new skill, ask:
1. Is this a real repeated task?
2. Would a prompt alone be enough?
3. Is the scope too broad?
4. Does the name reflect the actual job?
5. Does the description make triggering likely but not noisy?
6. Are there companion prompts or templates?
7. Does it duplicate an existing skill?

## Anti-patterns

Do not:
- create a skill for a one-off task
- duplicate a prompt with a new name
- make the description so broad that it triggers constantly
- write elegant but unusable instructions
