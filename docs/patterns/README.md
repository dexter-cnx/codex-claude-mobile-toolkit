# AI UX Patterns

This folder adapts selected design patterns into a practical toolkit layer for AI-assisted and agent-assisted product work.

## Why this exists

The toolkit already provides rules, prompts, skills, and templates. What it benefits from here is a stronger set of product-facing patterns for:
- explainability
- workflow traceability
- resumability
- power-user navigation
- reusable knowledge workflows

## What belongs here

Only patterns that are both:
1. conceptually strong, and
2. operationally useful in real delivery work

## Recommended patterns for this toolkit

### Tier A - high fit, high value

- `epistemic-disclosure.md`
- `algorithmic-transparency.md`
- `historical-trails.md`

These patterns are broadly useful across agent-driven delivery, repo audits, AI research flows, internal tools, and review artifacts.

### Tier B - selective but valuable

- `command-palette.md`
- `programmable-notes.md`

These are highly valuable for specific surfaces such as web, desktop, internal tooling, Obsidian workflows, and agent consoles, but should not be forced into every mobile app.

## How to use these docs

- use them in planning before implementation
- use them during review to challenge opaque UX
- use them when writing prompts for Codex, Claude Code, Grok Code, or Antigravity
- use them as standards for templates and final artifacts

## Routing guide

If the task is:
- **AI output quality** -> start with `epistemic-disclosure.md`
- **ranking, recommendation, prioritization** -> start with `algorithmic-transparency.md`
- **multi-step or resumable workflow** -> start with `historical-trails.md`
- **power-user navigation** -> start with `command-palette.md`
- **knowledge-as-workflow** -> start with `programmable-notes.md`

## Decision rule

Do not ask "Can we add this pattern?"
Ask "What failure mode does this pattern prevent, and is that failure mode expensive enough to justify the UI and implementation cost?"
