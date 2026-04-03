# AI UX Pattern Rules

Use these rules when designing or reviewing AI-assisted, agent-assisted, search-heavy, knowledge-heavy, or workflow-heavy product surfaces.

## Purpose

These rules help the toolkit produce interfaces and artifacts that are easier to trust, easier to inspect, and easier to resume.

## Core rule

Do not ship opaque AI UX when a small amount of disclosure, traceability, or review metadata would materially improve trust and usability.

## Pattern selection rules

### 1. Epistemic Disclosure

Use when the system produces:
- summaries
- recommendations
- classifications
- extracted facts
- generated plans
- research outputs
- agent-authored change proposals

Require the output to expose, where appropriate:
- confidence level
- evidence or source basis
- assumptions made
- unknowns or unresolved items
- whether the system is quoting, transforming, inferring, or guessing

Do not add epistemic chrome when the task is trivial and deterministic.

### 2. Algorithmic Transparency

Use when the system ranks, filters, recommends, prioritizes, or decides.

Require the system to expose, where appropriate:
- what inputs influenced the result
- what rules or heuristics were applied
- what user actions can change the result
- what the system did not consider

Do not claim model internals you cannot verify.

### 3. Historical Trails

Use when the user is on a journey rather than completing a single action.

Examples:
- research workflows
- debugging flows
- agent execution chains
- multi-step planning
- navigation across many linked artifacts
- resumable work sessions

Expose:
- where the user is now
- where they came from
- recent important actions
- resumable checkpoints
- pending next actions

### 4. Command Palette

Prefer a command palette for:
- web or desktop tools
- internal tooling
- ops/admin surfaces
- feature-dense products
- apps with many destinations or actions

Do not force command palette patterns into touch-first consumer mobile flows unless there is a strong power-user reason.

### 5. Programmable Notes

Use when a note, prompt, or memory object is not just content but also a reusable workflow trigger.

Examples:
- project brief templates
- reusable investigation recipes
- agent handoff notes
- structured memory docs
- task-specific prompt runners

Prefer lightweight conventions over full embedded programmability unless the workflow demands it.

## Review rules

Every AI feature proposal should answer:
1. What does the system know versus infer?
2. What user-facing trace should remain after the action completes?
3. What explanation is necessary for trust?
4. Is this a one-shot action or an exploratory journey?
5. Should the interface expose actions through visible controls, a command palette, or both?

## Anti-patterns

Avoid:
- fake certainty
- black-box ranking without explanation
- agent execution with no review trail
- excessive status noise with no real decision value
- feature bloat from applying every pattern everywhere

## Shipping threshold

A pattern is worth adding to a product surface only if it materially improves at least one of:
- trust
- recoverability
- speed for repeat usage
- user understanding
- auditability
- handoff quality

