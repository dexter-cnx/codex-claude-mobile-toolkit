---
name: flutter-repo-conventions
description: Repository-wide conventions for Flutter apps using Riverpod, go_router, Isar, easy_localization, CSV-first localization, and Material 3.
version: 1.0.0
tags:
  - flutter
  - toolkit
  - riverpod
---

# Purpose
Repository-wide conventions for Flutter apps using Riverpod, go_router, Isar, easy_localization, CSV-first localization, and Material 3.

# When to Use
- Before making multi-file changes.
- When reviewing architecture fit.
- When bootstrapping new repo overlays.

# When Not to Use
- Do not use as the only task instruction for implementing a feature.
- Do not use when the target repo explicitly uses a different preset.

# Repository Assumptions
- **state management**: Riverpod
- **routing**: go_router
- **local persistence**: Isar
- **localization**: easy_localization with CSV-first source of truth exported to JSON
- **design system**: Material 3 with shared design tokens
- **architecture**: practical Clean Architecture with presentation/domain/data split where justified

# Instructions
1. Read AGENTS.md, CLAUDE.md, relevant prompts/, and nearby feature files before proposing changes.
2. Keep widgets focused on composition and rendering. Do not place business logic, parsing, or persistence logic in widgets.
3. Prefer small reusable widgets over massive screen files, but do not over-extract trivial wrappers.
4. Keep state management inside Riverpod providers/notifiers/controllers appropriate to the repo style.
5. Use go_router for navigation changes and keep route declarations consistent.
6. Treat assets/i18n/translations.csv as the source of truth for user-facing strings unless the repo states otherwise.
7. Map DTO/model objects into domain entities before they reach presentation when the feature meaningfully benefits from separation.
8. Add loading, empty, error, and success states where relevant.
9. Do not introduce new dependencies unless there is a clear payoff.
10. Keep changes scoped; avoid incidental refactors unless necessary for correctness.

# Output Format
- Assumptions checked
- Files to inspect
- Conventions that apply
- Risks or ambiguities

# Guardrails
- Keep changes scoped to the request.
- Be explicit about assumptions and uncertainties.
- Do not add dependencies or abstractions without justification.
- Preserve readability and maintainability over cleverness.
