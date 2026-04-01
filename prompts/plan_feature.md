# Plan Feature

Use this prompt before implementing a medium or large change.

The goal is to force a planning pass that is specific enough to guide implementation and verification.

## Required behavior

You are working inside a toolkit-driven mobile repository.

Before proposing implementation, do the following in order:

1. Read the durable repo rules and applicable agent overlay.
2. Read any relevant project memory files.
3. Restate the requested feature in concrete terms.
4. Separate goals, constraints, assumptions, and non-goals.
5. Identify architecture impact.
6. Propose the implementation shape.
7. Identify touched files or likely file groups.
8. Define a verification plan.
9. Identify risks and follow-up items.

## Output format

Produce the response in these sections:

### 1. Feature restatement

Summarize the requested outcome in plain engineering language.

### 2. Assumptions

List assumptions that must be true for the plan to hold.

### 3. Constraints and non-goals

Separate hard boundaries from things intentionally out of scope.

### 4. Architecture impact

Explain:

- which layers are affected,
- whether any boundaries are at risk,
- and how the change should fit the repo's architecture.

### 5. Proposed implementation plan

Provide a step-by-step implementation plan.

### 6. File touch map

List the expected files or directories to inspect or change.

### 7. Verification plan

Define:

- what must be checked,
- what can regress,
- and which artifact should be emitted.

### 8. Risks and open questions

Be explicit about uncertainty.

### 9. Recommendation

State whether the task should proceed now, be narrowed, or be split.

## Quality bar

Do not jump into code.
Do not give vague advice.
Do not treat the task as a generic feature request.
Anchor the plan to the actual repo structure and constraints.
