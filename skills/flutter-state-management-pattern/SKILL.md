---
name: flutter-state-management-pattern
description: Apply Riverpod state management patterns consistently across features.
version: 1.0.0
tags:
  - flutter
  - toolkit
  - riverpod
---

# Purpose
Apply Riverpod state management patterns consistently across features.

# When to Use
- Creating screens with async state.
- Refactoring provider design.
- Reviewing state ownership and side effects.

# When Not to Use
- Do not force a complex notifier hierarchy for trivial static screens.

# Repository Assumptions
- **library**: Riverpod

# Instructions
1. Pick the lightest viable Riverpod primitive for the feature.
2. Keep async loading and mutation flows explicit.
3. Separate long-lived app state, feature state, and ephemeral UI state.
4. Model one-time events carefully; do not hide navigation/snackbar side effects inside random helpers.
5. Minimize unnecessary rebuilds by scoping providers and watch/select usage carefully.
6. Make provider naming and placement predictable.

# Output Format
- Chosen provider pattern
- State shape
- Side-effect locations
- Rebuild considerations

# Guardrails
- Keep changes scoped to the request.
- Be explicit about assumptions and uncertainties.
- Do not add dependencies or abstractions without justification.
- Preserve readability and maintainability over cleverness.
