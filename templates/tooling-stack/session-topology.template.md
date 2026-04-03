---
type: session-topology
project: <project-name>
status: active
last_updated: <yyyy-mm-dd>
---

# Session topology

## Objective

State the current delivery objective.

## Active lanes

| Lane | Purpose | Agent surface | Branch / worktree | Owner | Expected artifact |
|---|---|---|---|---|---|
| Planning | <purpose> | <Codex/Claude/Antigravity/OpenClaw> | <branch> | <owner> | <artifact> |
| Build | <purpose> | <surface> | <branch> | <owner> | <artifact> |
| Review | <purpose> | <surface> | <branch> | <owner> | <artifact> |
| Memory | <purpose> | <surface> | <branch> | <owner> | <artifact> |

## Handoff requirements

Each lane must record:
- files touched
- current status
- blockers
- next safe step
- verification state

## Closure rule

No lane is considered complete until its durable artifact exists.
