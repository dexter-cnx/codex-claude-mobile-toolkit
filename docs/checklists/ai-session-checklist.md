# AI Session Checklist

## Before starting

- Is the task narrow and specific?
- Is the expected outcome explicit?
- Is `CLAUDE.md` still short and current?
- Are unnecessary MCP servers or heavy integrations disabled?
- Do I know which files are likely relevant?

## Before asking the agent to inspect code

- Can I point it to a specific feature, file, folder, or stack trace?
- Can the task be split into a smaller first step?
- Is any background context better stored in docs instead of chat?

## Before running commands

- Can output be limited with `rg`, `head`, `tail`, `jq`, or path scoping?
- Am I about to dump logs that the agent does not actually need?
- Can I run a targeted test instead of the whole suite?

## When the agent seems uncertain

- Stop and ask what assumption is unclear.
- Confirm repository pattern, API contract, or UX expectation.
- Prevent speculative rewrites.

## When switching topics

- Summarize current status.
- Record unresolved items.
- Start a fresh focused session or compact handoff.

## Before large refactors

- Ask for a short plan first.
- Confirm architecture constraints.
- Define what is out of scope.
- Split work into smaller commits or checkpoints.

## Before ending the session

- Capture the result in a short handoff.
- Note any remaining risk.
- Identify the next smallest step.
