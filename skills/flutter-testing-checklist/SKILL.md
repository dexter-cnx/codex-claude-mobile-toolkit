---
name: flutter-testing-checklist
description: Produce a pragmatic testing plan for Flutter features and refactors.
version: 1.0.0
tags:
  - flutter
  - toolkit
  - riverpod
---

# Purpose
Produce a pragmatic testing plan for Flutter features and refactors.

# When to Use
- After implementing a feature.
- Before opening a PR.
- When deciding what test coverage is worth adding.

# When Not to Use
- Do not demand exhaustive low-value tests.

# Repository Assumptions
- **priority**: high-value tests first

# Instructions
1. Identify business-critical logic first.
2. Separate must-have tests from nice-to-have tests.
3. Prefer unit tests for pure logic, widget tests for interaction/state rendering, and integration tests only when the flow value justifies them.
4. Call out risk areas such as parsing, async state, navigation guards, and persistence edges.
5. Keep the plan aligned to actual project complexity.

# Output Format
- Must-have tests
- Nice-to-have tests
- Suggested test files
- Gaps remaining

# Guardrails
- Keep changes scoped to the request.
- Be explicit about assumptions and uncertainties.
- Do not add dependencies or abstractions without justification.
- Preserve readability and maintainability over cleverness.
