# Feature Registry

This document is the source of truth for **what capabilities exist in the toolkit**, how stable they are, and where they should be used.

Its purpose is to prevent toolkit sprawl.

Without a registry, repositories usually accumulate prompts, skills, templates, and docs faster than contributors can understand them. This file makes each capability explicit.

---

## Status model

Every capability should have one of these statuses.

### stable
Use in real project delivery by default.

Criteria:

- clearly documented,
- works on intended surfaces,
- has known inputs and outputs,
- has at least one concrete example,
- verification expectations are documented.

### experimental
Useful, but not safe to assume for every repo.

Criteria:

- may still change structure,
- may depend on a specific runtime,
- may not yet have enough examples,
- or may require stronger human review.

### internal
Present for maintainers or future packaging, but not recommended as a general public entrypoint.

### deprecated
Kept temporarily for compatibility but should not be chosen for new flows.

---

## Surface model

Every capability should declare its surface.

Examples:

- `codex`
- `claude-code`
- `grok-code`
- `antigravity`
- `openclaw`
- `shared`
- `mcp`
- `template`
- `docs`

A capability can support multiple surfaces.

---

## Capability schema

Each entry should describe:

- **name**
- **type**: rule / prompt / skill / workflow / template / doc / memory
- **status**
- **surfaces**
- **path**
- **purpose**
- **inputs**
- **outputs**
- **dependencies**
- **verification expectations**
- **fallback path**
- **owner**
- **last-reviewed**

---

## Registry entries

## 1. Repo-wide durable rules
- **name**: Durable repo rules
- **type**: rule
- **status**: stable
- **surfaces**: shared, codex, claude-code, grok-code, antigravity, openclaw
- **path**: `AGENTS.md`
- **purpose**: Define the non-negotiable repo conventions that all agents and contributors should follow.
- **inputs**: project conventions, architectural boundaries, coding rules
- **outputs**: consistent behavior across sessions and surfaces
- **dependencies**: none
- **verification expectations**: all implementation and review prompts must align with these rules
- **fallback path**: none
- **owner**: repo maintainer
- **last-reviewed**: 2026-04-01

## 2. Agent-specific overlays
- **name**: Agent overlays
- **type**: rule
- **status**: stable
- **surfaces**: codex, claude-code, grok-code, antigravity, openclaw
- **path**: `CLAUDE.md`, `CODEX.md`, `GROK.md`, `ANTIGRAVITY.md`, `OPENCLAW.md`
- **purpose**: Adapt the shared repo rules to each agent surface.
- **inputs**: surface-specific workflow assumptions
- **outputs**: surface-aware execution guidance
- **dependencies**: `AGENTS.md`
- **verification expectations**: overlays should not contradict shared rules
- **fallback path**: use `AGENTS.md`
- **owner**: repo maintainer
- **last-reviewed**: 2026-04-01

## 3. Skill workflow routing map
- **name**: Skill/workflow routing map
- **type**: doc
- **status**: stable
- **surfaces**: shared
- **path**: `docs/skill-workflow-map.md`
- **purpose**: Help contributors choose the correct entrypoint.
- **inputs**: task type
- **outputs**: recommended prompt/skill/workflow path
- **dependencies**: current repo structure
- **verification expectations**: update when new skills or pipelines are added
- **fallback path**: README navigation
- **owner**: repo maintainer
- **last-reviewed**: 2026-04-01

## 4. Verification workflow
- **name**: Formal verification workflow
- **type**: prompt + doc + template
- **status**: stable
- **surfaces**: shared, codex, claude-code, antigravity
- **path**: `prompts/verification_pass.md`, `docs/verification-workflow.md`, `templates/verification-report.md`
- **purpose**: Standardize how changes are checked before merge.
- **inputs**: change summary, touched files, acceptance criteria
- **outputs**: verification report with pass/fail status and residual risks
- **dependencies**: test/build/tooling availability
- **verification expectations**: required for review-ready work
- **fallback path**: manual review using artifact templates
- **owner**: repo maintainer
- **last-reviewed**: 2026-04-01

## 5. Project memory system
- **name**: Project memory system
- **type**: doc + memory
- **status**: experimental
- **surfaces**: shared, codex, claude-code, antigravity, openclaw
- **path**: `docs/project-memory-system.md`, `project_memory/`
- **purpose**: Capture durable project knowledge so future sessions stay aligned.
- **inputs**: architecture decisions, domain terminology, UI rules, known issues
- **outputs**: persistent project context files
- **dependencies**: contributor discipline
- **verification expectations**: update memory when decisions or constraints change materially
- **fallback path**: project README + AGENTS only
- **owner**: repo maintainer
- **last-reviewed**: 2026-04-01

## 6. Runtime matrix
- **name**: Runtime support matrix
- **type**: doc
- **status**: stable
- **surfaces**: shared
- **path**: `docs/runtime-matrix.md`
- **purpose**: Show which surfaces support which workflows and caveats.
- **inputs**: current supported agent surfaces and setup requirements
- **outputs**: compatibility table and decision guidance
- **dependencies**: install docs
- **verification expectations**: revise after adding or changing surfaces
- **fallback path**: agent-specific install docs
- **owner**: repo maintainer
- **last-reviewed**: 2026-04-01

## 7. Feature planning prompt
- **name**: Feature planning prompt
- **type**: prompt
- **status**: stable
- **surfaces**: codex, claude-code, antigravity, openclaw
- **path**: `prompts/plan_feature.md`
- **purpose**: Force a planning pass before large implementation work.
- **inputs**: feature goal, constraints, repo context
- **outputs**: assumptions, architecture plan, file touch list, verification plan
- **dependencies**: repo rules
- **verification expectations**: implementation should trace back to plan
- **fallback path**: existing project planning prompts
- **owner**: repo maintainer
- **last-reviewed**: 2026-04-01

## 8. Project coherence pass
- **name**: Coherence pass
- **type**: prompt
- **status**: experimental
- **surfaces**: codex, claude-code, antigravity
- **path**: `prompts/coherence_pass.md`
- **purpose**: Detect drift between rules, prompts, templates, and memory.
- **inputs**: changed files, current repo structure, recent task summary
- **outputs**: inconsistency report and update actions
- **dependencies**: recent change context
- **verification expectations**: run after major toolkit updates
- **fallback path**: manual maintenance audit
- **owner**: repo maintainer
- **last-reviewed**: 2026-04-01

---

## Governance rules

When adding a new capability:

1. Add a registry entry before or during the change.
2. Do not mark a capability `stable` until it has:
   - at least one example,
   - routing guidance,
   - and verification expectations.
3. If a new file overlaps an older one, decide whether to:
   - merge,
   - deprecate,
   - or keep both with explicit routing.
4. Update `docs/skill-workflow-map.md` when the new capability becomes user-facing.
5. Update `docs/runtime-matrix.md` if runtime support changed.

---

## Anti-sprawl checklist

Before adding a new prompt, skill, workflow, or template, ask:

- Is this genuinely new, or is it a variant of an existing capability?
- Should this be a skill instead of a pipeline?
- Does it belong under Antigravity rather than generic prompts?
- Will users know when to pick it?
- What artifact should it emit?
- What verification should follow it?

If those answers are unclear, the capability is probably not ready.

