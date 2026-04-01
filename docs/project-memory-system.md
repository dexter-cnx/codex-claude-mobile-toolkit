# Project Memory System

This document defines how to capture durable project knowledge so future agent sessions stay aligned with the repo.

The goal is simple:

> Stop making every new session rediscover the same architecture, terminology, tradeoffs, and unresolved risks.

## Why this exists

AI-assisted repos often fail in the same way:

- the code gets better,
- but the project memory stays fragile.

That leads to repeated drift:

- architecture rules are reinterpreted,
- naming becomes inconsistent,
- old decisions get undone,
- and follow-up work disappears into chat history.

A lightweight memory layer fixes that.

## Recommended folder

```text
project_memory/
|- architecture_decisions.md
|- domain_glossary.md
|- ui_rules.md
|- known_issues.md
`- agent_handoff.md
```

These files are intentionally plain Markdown so they can be read by both humans and agents.

## File purposes

### architecture_decisions.md

Capture durable design decisions.

Examples:

- why a feature uses Riverpod or GetX,
- why a DTO mapping rule exists,
- why a repository boundary is enforced,
- why a particular navigation pattern is preferred.

Use this file for decisions that should shape future implementation work.

### domain_glossary.md

Capture important product vocabulary.

Examples:

- domain entities,
- business terms,
- role names,
- lifecycle states,
- and words that should not be casually renamed.

This file prevents accidental semantic drift.

### ui_rules.md

Capture UI and UX standards that recur across features.

Examples:

- loading/empty/error rules,
- token usage,
- layout priorities,
- localization conventions,
- accessibility notes,
- design-system expectations.

### known_issues.md

Capture active technical debt and unresolved concerns.

Examples:

- fragile areas,
- partial migrations,
- flaky tests,
- temporary compromises,
- and places needing follow-up.

### agent_handoff.md

Capture the latest execution summary for future sessions.

Examples:

- what changed,
- what remains,
- what risks were found,
- and what the next best task is.

This is the most session-oriented memory file.

## What belongs in project memory

Good candidates:

- decisions likely to matter again in future tasks,
- recurring repo constraints,
- domain-specific terms,
- architecture boundaries,
- non-obvious setup assumptions,
- unresolved risks with future impact,
- and "why" explanations that are not obvious from code alone.

Bad candidates:

- chatty implementation minutiae,
- one-off temporary experiments with no lasting value,
- raw logs,
- or information that belongs only in a single PR description.

## Update triggers

Update project memory when any of the following happen:

- a new architecture decision is made,
- a repo convention changes,
- a major feature introduces new terminology,
- a workaround becomes part of the delivery reality,
- a known issue is resolved or re-scoped,
- or a task ends with important follow-up constraints.

## Update flow

### During planning

Check memory first.

Questions:

- What already exists that this task must respect?
- Is there an earlier decision this work should inherit?
- Is there known terminology that the feature must match?

### During implementation

Note any newly discovered durable constraint.

### During verification

Decide whether the task changed long-lived project knowledge.

### During handoff

Update the appropriate memory files.

## Review standard

Project memory should be:

- concise,
- durable,
- factual,
- and biased toward future usefulness.

Avoid turning it into a second README or a task diary.

## Integration with prompts

Recommended prompt interactions:

- planning prompts should read memory first,
- verification prompts should check whether memory needs updating,
- handoff prompts should write back to memory,
- and audit prompts should detect stale memory.

See:

- `prompts/plan_feature.md`
- `prompts/update_project_memory.md`
- `prompts/verification_pass.md`
- `prompts/coherence_pass.md`

## Suggested maintenance cadence

- quick update after any meaningful feature or architectural change,
- periodic cleanup during repo audits,
- and explicit review when onboarding a new project or major contributor.
