# Epistemic Disclosure

## Definition

Expose the knowledge status of a result so the user can tell what is known, inferred, estimated, transformed, or still unresolved.

## Why it belongs in this toolkit

This toolkit is designed for agent-assisted and AI-assisted delivery. That means many outputs are not simple deterministic UI states. They are generated artifacts such as:
- summaries
- plans
- proposed refactors
- audits
- investigations
- extracted requirements
- content transformations

Without disclosure, these outputs look more certain than they really are.

## When to use

Use for:
- AI-generated summaries
- repo audits
- issue triage summaries
- release notes generated from commits or PRs
- proposed implementation plans
- extraction from long docs or meetings
- OCR-derived or parser-derived content

## What to expose

A production-grade output should expose some subset of:
- confidence
- evidence basis
- assumptions
- unresolved questions
- inference markers
- freshness or timestamp when relevant

## Minimal output contract

Use this structure where appropriate:

```md
## Result
...

## Confidence
High | Medium | Low

## Based on
- source A
- source B

## Assumptions
- assumption 1

## Unknowns / Risks
- risk 1
```

## Good uses in toolkit artifacts

- final review reports
- repo audit reports
- investigation reports
- project memory summaries
- AI-generated technical decision notes

## Flutter implementation ideas

- result cards with disclosure footer
- badges for confidence, source type, or freshness
- expandable “assumptions” and “unknowns” sections
- structured markdown section in generated artifacts

## Acceptance criteria

A feature using this pattern should let a reviewer answer:
- what was actually observed?
- what was inferred?
- how confident should I be?
- what still needs manual confirmation?

## Pitfalls

Avoid:
- fake precision
- assigning numeric confidence with no basis
- cluttering deterministic flows with unnecessary disclosure blocks
- writing uncertainty theater instead of real review information

