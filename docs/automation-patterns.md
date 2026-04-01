# Automation Patterns

This document describes practical automation patterns for a toolkit-driven mobile repo.

The point is not to automate everything.
The point is to automate the **repeatable transitions** between planning, implementation, verification, and handoff.

---

## Principle

Automate the glue, not the judgment.

Good automation:

- launches a known workflow,
- prepares context,
- validates required inputs,
- or emits a standard artifact.

Bad automation:

- silently changes architecture,
- suppresses required review,
- or hides risk behind a convenient command.

---

## Recommended automation triggers

### 1) After project bootstrap
Trigger:

- new repo created,
- toolkit copied in,
- or submodule added.

Automate:

- create initial `project_memory/` files,
- add default README links,
- prompt for project-specific rule overlay.

### 2) Before large feature work
Trigger:

- feature brief added,
- issue labeled as feature,
- or explicit user request.

Automate:

- run `prompts/plan_feature.md`,
- create a change summary template,
- seed a verification plan.

### 3) After implementation completion
Trigger:

- code changes staged,
- or task marked ready for review.

Automate:

- run `prompts/verification_pass.md`,
- create/update verification artifact,
- collect residual risks.

### 4) After merge-ready verification
Trigger:

- verification status reaches verified or partially verified.

Automate:

- run `prompts/update_project_memory.md`,
- update handoff notes,
- prepare reviewer summary.

### 5) After toolkit changes
Trigger:

- prompt/skill/template/docs update in this toolkit repo.

Automate:

- run `prompts/coherence_pass.md`,
- update feature registry,
- update runtime matrix if support changed.

---

## Suggested command-style shortcuts

Examples of slash-command style entrypoints to mirror across surfaces:

- `/plan-feature`
- `/verify-change`
- `/update-memory`
- `/coherence-pass`
- `/review-architecture`

These do not have to exist as real shell commands. They can be naming conventions in docs, Antigravity workflows, or OpenClaw commands.

---

## Good candidates for chat-driven automation

Best for OpenClaw or remote orchestration:

- request summaries,
- launch planning workflow,
- verify whether an artifact exists,
- ask for latest handoff,
- route a task to the correct workflow.

Less ideal for chat-only surfaces:

- broad refactors,
- heavy local build/test tasks,
- or work requiring frequent file-level corrections.

---

## Good candidates for local CLI automation

Best for Codex or Claude Code environments:

- repo-local plan generation,
- code-change review loops,
- updating artifacts,
- checking touched files,
- enforcing documentation updates.

---

## Guardrails

Every automation should answer these questions:

- What is the trigger?
- What inputs are assumed?
- What files can change?
- What artifact should be emitted?
- What still requires human review?

If those are unclear, the automation is too vague.

