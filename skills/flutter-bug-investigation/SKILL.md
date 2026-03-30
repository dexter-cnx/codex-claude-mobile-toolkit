---
name: flutter-bug-investigation
description: Investigate Flutter bugs methodically before proposing fixes.
version: 1.0.0
tags:
  - flutter
  - toolkit
  - riverpod
---

# Purpose
Investigate Flutter bugs methodically before proposing fixes.

# When to Use
- A bug report lacks a root cause.
- State seems inconsistent.
- UI, routing, localization, or data bugs are hard to pin down.

# When Not to Use
- Do not guess-fix by changing many files at once.

# Instructions
1. Restate the bug in reproducible terms.
2. Classify the likely layer: UI, Riverpod state, routing, persistence, network, localization, platform, or build.
3. List hypotheses ranked by probability.
4. Inspect the minimum files needed to validate the top hypotheses.
5. Propose the smallest credible fix first.
6. Add regression checks targeted to the original failure.

# Output Format
- Repro summary
- Likely causes
- Files to inspect
- Minimal fix plan
- Regression checks

# Guardrails
- Keep changes scoped to the request.
- Be explicit about assumptions and uncertainties.
- Do not add dependencies or abstractions without justification.
- Preserve readability and maintainability over cleverness.
