---
name: flutter-feature-scaffold
description: Scaffold a new Flutter feature that fits the toolkit preset and stays pragmatic.
version: 1.0.0
tags:
  - flutter
  - toolkit
  - riverpod
---

# Purpose
Scaffold a new Flutter feature that fits the toolkit preset and stays pragmatic.

# When to Use
- Adding a new feature module.
- Extending an existing domain flow.
- Converting a rough prototype into a structured feature.

# When Not to Use
- Do not blindly create all layers when a tiny UI-only change is enough.

# Repository Assumptions
- **state management**: Riverpod
- **router**: go_router
- **architecture**: practical Clean Architecture

# Instructions
1. Start with the feature goal, user flow, data sources, and constraints.
2. Decide whether the feature needs presentation/domain/data separation or a lighter structure.
3. Create only the files justified by scope: screen, widgets, provider/notifier, entities, use cases, repositories, datasource(s), routes, and tests.
4. Keep presentation independent from raw API and database formats.
5. List new localization keys required by the feature.
6. Document error, loading, empty, and success states.
7. End with an implementation checklist and a review pass.

# Output Format
- Feature summary
- Recommended file tree
- Implementation sequence
- Localization keys
- Test checklist

# Guardrails
- Keep changes scoped to the request.
- Be explicit about assumptions and uncertainties.
- Do not add dependencies or abstractions without justification.
- Preserve readability and maintainability over cleverness.
