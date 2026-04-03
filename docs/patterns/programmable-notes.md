# Programmable Notes

## Definition

Treat notes, briefs, prompts, and memory artifacts as executable workflow anchors rather than passive text containers.

## Why it belongs in this toolkit

This toolkit already contains prompts, project memory, shared rules, skills, and templates. That means it is naturally adjacent to programmable-note workflows, especially for:
- Obsidian-oriented markdown
- structured handoff files
- prompt recipes
- investigation playbooks
- reusable project briefs

## Why it should be selective

The idea is strong, but the implementation can become heavy quickly. Start with conventions and templates before building interactive note execution systems.

## When to use

Use when a note needs to carry:
- structured context
- reusable steps
- required outputs
- validation criteria
- role-specific instructions

## Good first implementations

Start with markdown conventions such as:
- frontmatter for context and status
- required sections
- embedded checklists
- explicit inputs and outputs
- handoff blocks
- reusable command snippets

## Strong toolkit use cases

- project briefs
- feature briefs
- bug investigation notes
- final review packs
- architecture decision records
- agent handoff notes

## Minimal note contract

```md
---
status: draft
owner: agent
workflow: investigation
---

## Inputs
...

## Procedure
1. ...
2. ...

## Required Outputs
- report
- risks
- next step
```

## Acceptance criteria

A programmable note is successful when another contributor or agent can pick it up and execute the same workflow with minimal ambiguity.

## Pitfalls

Avoid:
- inventing a scripting system before proving need
- hiding critical workflow logic in prose
- notes that are reusable in theory but not in practice

