# Historical Trails

## Definition

Leave a visible, useful trail showing where the user has been, what happened, and how they can resume or retrace a multi-step journey.

## Why it belongs in this toolkit

This toolkit is strongly aligned with:
- debugging
- guided investigations
- repo audits
- agent-run workflows
- multi-step implementation lanes
- review and handoff artifacts

Those are journeys, not single clicks.

## When to use

Use when the user may need to:
- resume after interruption
- understand how an outcome was reached
- hand work to another person or agent
- compare past and present state
- retrace a sequence of actions

## What to expose

A good historical trail may include:
- current stage
- prior completed steps
- decisions made
- important artifacts produced
- next recommended step
- timestamped checkpoints

## Minimal trail contract

```md
## Current Stage
Verification

## Trail
1. Scanned repo structure
2. Identified localization violations
3. Proposed patch set
4. Ran review checklist

## Produced Artifacts
- audit report
- patch summary

## Next Step
- confirm with integration tests
```

## Good uses in toolkit artifacts and products

- finalization pipelines
- investigation prompts
- project memory notes
- multi-step agent runs
- bug triage dashboards
- onboarding flows for complex internal tools

## Flutter implementation ideas

- timeline components
- stepper with persisted state
- compact activity stream for agent work
- “resume from last checkpoint” UI

## Acceptance criteria

A feature using this pattern should let a reviewer answer:
- where am I now?
- what already happened?
- what artifact was produced?
- what should happen next?

## Pitfalls

Avoid:
- noisy activity logs with no decision value
- trails that show every tiny event but hide major transitions
- progress UIs that imply certainty where none exists

