# Update Project Memory

Use this prompt after a meaningful change has been implemented and verified.

## Required behavior

You are updating the durable project memory for a toolkit-driven repository.

Review the recent task and determine which long-lived knowledge should be captured.

Inspect and update the appropriate files in `project_memory/`:

- `architecture_decisions.md`
- `domain_glossary.md`
- `ui_rules.md`
- `known_issues.md`
- `agent_handoff.md`

## Decision rules

Only write information that is likely to matter again.

Good memory includes:

- durable architecture decisions,
- repeated terminology,
- non-obvious constraints,
- unresolved technical risk,
- and handoff context for future work.

Do not write:

- raw implementation chatter,
- trivial one-off details,
- or information already obvious from code alone.

## Output format

### 1. What changed
### 2. What durable knowledge should be captured
### 3. Files to update
### 4. Exact memory entries to add or revise
### 5. Follow-up recommendations

