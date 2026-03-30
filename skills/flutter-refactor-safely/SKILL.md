---
name: flutter-refactor-safely
description: Refactor Flutter code in controlled steps while preserving behavior.
version: 1.0.0
tags:
  - flutter
  - toolkit
  - riverpod
---

# Purpose
Refactor Flutter code in controlled steps while preserving behavior.

# When to Use
- Extracting widgets.
- Moving logic across layers.
- Reducing duplication.
- Cleaning architecture drift.

# When Not to Use
- Do not mix large feature additions into the same refactor unless unavoidable.

# Instructions
1. State the current problems and intended end state.
2. Choose the smallest safe sequence of moves.
3. Preserve behavior after each step and define quick checks.
4. Separate mechanical renames/moves from logic changes whenever possible.
5. Identify rollback points and risky couplings.
6. Finish with cleanup opportunities that can be deferred.

# Output Format
- Refactor goal
- Step-by-step sequence
- Risk points
- Verification checks

# Guardrails
- Keep changes scoped to the request.
- Be explicit about assumptions and uncertainties.
- Do not add dependencies or abstractions without justification.
- Preserve readability and maintainability over cleverness.
