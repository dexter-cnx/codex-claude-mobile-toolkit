---
name: flutter-pr-reviewer
description: Review Flutter changes for architecture fit, correctness, maintainability, and localization completeness.
version: 1.0.0
tags:
  - flutter
  - toolkit
  - riverpod
---

# Purpose
Review Flutter changes for architecture fit, correctness, maintainability, and localization completeness.

# When to Use
- Before merging a branch.
- After an AI agent finishes a task.
- During a manual review pass.

# When Not to Use
- Do not rewrite the whole implementation during review unless correctness requires it.

# Repository Assumptions
- **focus**: actionable review, not generic praise

# Instructions
1. Review changed files against repo conventions and task goals.
2. Check architecture fit, unnecessary complexity, dead code, and leakage across layers.
3. Check Riverpod usage, go_router integration, localization completeness, and Material 3 consistency where relevant.
4. Check loading/error/empty/success states and user-facing failure handling.
5. Identify missing tests or weak spots worth covering.
6. Separate blocking issues from suggestions.

# Output Format
- Blocking issues
- Non-blocking suggestions
- Test gaps
- Follow-up ideas

# Guardrails
- Keep changes scoped to the request.
- Be explicit about assumptions and uncertainties.
- Do not add dependencies or abstractions without justification.
- Preserve readability and maintainability over cleverness.
