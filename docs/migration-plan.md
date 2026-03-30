# Migration Plan

## Objective
Evolve a prompt-heavy mobile toolkit into a skill-based repository with reusable rules, explicit workflow units, and adapters for multiple coding-agent surfaces.

## Migration phases

### Phase 1: extract shared rules
Move stable guidance out of giant prompt files and into `core/`.

Deliverables:
- engineering principles
- architecture principles
- localization rules
- api integration rules
- performance rules
- testing rules
- docs output rules

Exit criteria:
- root agent files reference `core/` instead of duplicating everything
- shared guidance is readable without tool-specific wording

### Phase 2: define the first critical skills
Create task-specific skills for the most common workflows.

Priority order:
1. flutter-project-bootstrap
2. flutter-feature-scaffold
3. flutter-localization-csv
4. flutter-existing-project-audit

Exit criteria:
- each skill has purpose, input contract, output contract, checklist, and common failure modes
- each skill can be invoked without reading unrelated skills

### Phase 3: add quality-oriented skills
Introduce secondary skills that strengthen code quality and developer workflow.

Skills:
- flutter-performance-audit
- flutter-testing
- mobile-ui-refinement
- obsidian-doc-writer
- api-integration
- flutter-clean-architecture-lite

Exit criteria:
- prompts can route to these skills directly
- teams can use them during iteration, not only at project start

### Phase 4: unify adapters and prompts
Refactor `AGENTS.md`, `CLAUDE.md`, `CODEX.md`, and `ANTIGRAVITY.md` so they share the same routing model.

Exit criteria:
- tool adapters mostly differ in execution style, not in engineering rules
- prompts reference skills consistently

## Recommended sequence for an existing repo
1. Introduce `core/`
2. Add `flutter-feature-scaffold` and `flutter-localization-csv`
3. Rewrite root agent files to reference those skills
4. Add `flutter-existing-project-audit`
5. Add quality skills once the team is comfortable with the structure

## Risks
- too many tiny skills that are hard to discover
- duplicated rules across `core/`, `skills/`, and root files
- skills that describe ideals but do not define deliverables
- trying to support too many non-mobile domains too early

## Guardrails
- one skill should solve one meaningful workflow
- prefer depth over breadth
- add examples whenever a skill becomes more complex
- update prompts whenever a skill contract changes
