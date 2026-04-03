# Multi-agent control plane

This playbook describes how to run multiple agent lanes around a single repository without losing coherence.

## Why this matters

The toolkit already separates:
- rules
- prompts
- skills
- templates
- memory

A control plane gives the human operator a way to assign those layers to parallel execution lanes.

## Canonical lane model

## Lane 1 — Planning
Inputs:
- feature request
- repo constraints
- existing architecture
- timeline or release needs

Outputs:
- plan markdown
- implementation order
- risk list
- acceptance criteria

Recommended toolkit assets:
- `prompts/plan_feature.md`
- `prompts/architecture_review.md`
- selected architecture skills

## Lane 2 — Build
Inputs:
- approved plan
- file boundaries
- coding standards
- design or API contracts

Outputs:
- implementation changes
- local notes
- follow-up questions

Recommended toolkit assets:
- feature-specific prompts
- implementation skills
- templates for architecture notes

## Lane 3 — Review
Inputs:
- diff
- plan
- expected architecture boundaries
- tests and behavior claims

Outputs:
- issue list
- suggested fixes
- merge readiness status

Recommended toolkit assets:
- `prompts/review_mobile_change.md`
- `prompts/verification_pass.md`
- testing and refactor safety skills

## Lane 4 — Memory
Inputs:
- merged decisions
- implementation trade-offs
- known limits
- future hooks

Outputs:
- project memory update
- decision log entry
- doc amendments
- follow-up backlog

Recommended toolkit assets:
- `prompts/update_project_memory.md`
- `templates/project-memory-update-report.md`
- Obsidian-friendly note conventions

## Isolation rules

1. One lane owns one immediate objective.
2. Planning lanes do not silently implement.
3. Review lanes do not silently rewrite broad code.
4. Memory lanes write durable summaries, not vague retrospectives.
5. Every lane should be able to stop and hand off cleanly.

## Coordination loop

1. Plan
2. Assign
3. Implement
4. Review
5. Reconcile
6. Update memory
7. Close or iterate

## Session board schema

Each session should track:
- lane name
- agent or tool surface
- branch or worktree
- objective
- current status
- blocking question
- expected output artifact

## Failure modes

### Context bleed
Symptoms:
- planning ideas leak into unrelated implementation
- reviewers start redesigning scope

Fix:
- stricter lane roles
- smaller handoff artifacts
- explicit branch ownership

### Memory rot
Symptoms:
- merged changes exist but rationale is missing
- future agents rediscover old decisions

Fix:
- require a memory closeout step
- enforce decision log updates for non-trivial changes

### Tool sprawl
Symptoms:
- too many dashboards, terminals, and sync tools
- more coordination overhead than delivery value

Fix:
- cut back to one session shell, one memory backend, one optional remote path

## Control-plane principle

The control plane is successful when it produces **clearer artifacts**, not when it adds more apps.
