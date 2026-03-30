---
name: flutter-ui-screen-implementation
description: Translate requirements or mockups into maintainable Flutter screens aligned with Material 3 and repo conventions.
version: 1.0.0
tags:
  - flutter
  - toolkit
  - riverpod
---

# Purpose
Translate requirements or mockups into maintainable Flutter screens aligned with Material 3 and repo conventions.

# When to Use
- Building a new screen.
- Refining an existing screen.
- Breaking a large UI into smaller widgets.

# When Not to Use
- Do not bury business rules in widget builders.

# Repository Assumptions
- **ui**: Material 3
- **approach**: small reusable widgets, token-aware styling

# Instructions
1. Break the screen into layout regions first.
2. Use design tokens and theme values instead of random inline constants where possible.
3. Plan empty, loading, error, and success views.
4. Support keyboard, safe areas, and common device constraints.
5. Extract repeated or semantically meaningful sections into widgets.
6. Keep widget APIs small and intention-revealing.

# Output Format
- Widget tree plan
- Reusable components
- State-aware UI cases
- Accessibility or responsiveness notes

# Guardrails
- Keep changes scoped to the request.
- Be explicit about assumptions and uncertainties.
- Do not add dependencies or abstractions without justification.
- Preserve readability and maintainability over cleverness.
