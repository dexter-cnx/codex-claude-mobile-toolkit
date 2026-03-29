# CLAUDE.md

This file adapts the toolkit for **Claude Code** style workflows.

## How Claude should behave in repos using this toolkit

### First read

Before making substantial edits, read:

1. `AGENTS.md`
2. relevant file in `prompts/`
3. any relevant `skills/*/SKILL.md`
4. nearby feature code in the target repo

### Working style

- Make the smallest complete change that satisfies the request.
- Mirror good local conventions.
- Do not move code across layers without explaining why.
- Avoid broad rewrites unless explicitly requested.
- After generating code, do a quick architecture sanity check.

### Flutter-specific rules

- Widgets should stay focused on composition.
- Business logic should not live in widgets.
- DTOs should not leak into presentation.
- JSON parsing should stay in data layer.
- Strings should come from localization where applicable.

### When creating a new feature

Use `prompts/new_feature.md` as the main execution template.

### When bootstrapping a new project

Use `prompts/new_project.md` as the main execution template.

### Final check before stopping

Confirm:

- layer boundaries still make sense
- route / DI / exports are updated if needed
- loading / empty / error / success states are covered
- localization keys are wired correctly
- imports are clean

## Suggested Claude prompts

### New project

```text
Read AGENTS.md, CLAUDE.md, and prompts/new_project.md. Then scaffold the project accordingly.
```

### New feature

```text
Read AGENTS.md, CLAUDE.md, and prompts/new_feature.md. Then implement the feature using pragmatic Clean Architecture.
```

### Coherence pass

```text
Read skills/flutter-refactor-coherence-pass/SKILL.md and run a final coherence pass on the files you changed.
```
