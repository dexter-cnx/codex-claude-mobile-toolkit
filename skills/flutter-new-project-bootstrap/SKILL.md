---
name: flutter-new-project-bootstrap
description: Bootstrap a new Flutter project aligned to the toolkit default preset: Riverpod, go_router, Isar, easy_localization, CSV-first localization, Material 3.
version: 1.0.0
tags:
  - flutter
  - toolkit
  - riverpod
---

# Purpose
Bootstrap a new Flutter project aligned to the toolkit default preset: Riverpod, go_router, Isar, easy_localization, CSV-first localization, Material 3.

# When to Use
- Creating a new app from a blank folder.
- Refreshing a starter template.
- Turning a generic Flutter app into the toolkit preset.

# When Not to Use
- Do not use for adding a single feature to an existing mature app.

# Repository Assumptions
- **state management**: Riverpod
- **routing**: go_router
- **persistence**: Isar
- **networking**: Dio when network access is needed
- **localization**: easy_localization + CSV export pipeline

# Instructions
1. Propose the minimal starter structure first.
2. Create foundational folders for app shell, core, features, localization, routing, and data access.
3. Set up Material 3 theming with token-friendly extension points.
4. Wire easy_localization and point documentation to assets/i18n/translations.csv as source of truth.
5. Prepare JSON export targets for locales and document generation workflow.
6. Set up Riverpod and go_router in a clean, inspectable baseline.
7. Include placeholders for environments/flavors only if the project will use them soon.
8. Prefer a starter that is easy to understand over a maximal template.

# Output Format
- Bootstrap plan
- Folder tree
- Starter files to create
- Dependencies
- Post-bootstrap checklist

# Guardrails
- Keep changes scoped to the request.
- Be explicit about assumptions and uncertainties.
- Do not add dependencies or abstractions without justification.
- Preserve readability and maintainability over cleverness.
