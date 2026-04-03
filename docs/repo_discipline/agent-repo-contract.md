# Agent Repo Contract

## Purpose

This file states how coding agents should interact with the toolkit.

## Contract

Agents working in this repo should:

1. read the durable rules first,
2. use existing prompts and skills before inventing new patterns,
3. preserve the module-first structure,
4. leave verifiable artifacts,
5. avoid hidden architecture shortcuts,
6. document uncertainty clearly.

## Completion rule

An agent should not claim completion without:
- a summary of what changed,
- validation status,
- known gaps,
- and suggested next steps when relevant.

## When adding new toolkit content

New material should:
- solve a repeatable problem,
- fit existing information architecture,
- avoid duplicating an existing prompt or skill,
- and include usage guidance.

## When not to add to toolkit core

Do not add domain-specific material to toolkit core unless it generalizes well across projects.
Prefer:
- `examples/`
- `docs/case-studies/`
- or narrowly scoped skill packs
for domain-heavy content.
