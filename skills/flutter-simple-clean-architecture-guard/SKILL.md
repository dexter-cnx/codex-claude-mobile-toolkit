---
name: flutter-simple-clean-architecture-guard
description: Prevent over-engineering while keeping architecture sound in Flutter projects.
version: 1.0.0
tags:
  - flutter
  - toolkit
  - riverpod
---

# Purpose
Prevent over-engineering while keeping architecture sound in Flutter projects.

# When to Use
- When planning a feature.
- When reviewing a refactor.
- When the agent is likely to add too many abstractions.

# When Not to Use
- Do not use to justify collapsing unrelated responsibilities into one file.

# Repository Assumptions
- **goal**: minimum sufficient structure

# Instructions
1. Challenge every new abstraction: repository interface, use case, mapper, sealed state, wrapper widget, helper class.
2. Keep a use case only when it captures business rules or coordinates collaborators in a reusable way.
3. Keep a repository abstraction only when multiple data sources, test seams, or domain isolation materially matter.
4. Do not split files just to mirror architecture diagrams.
5. Prefer direct, readable code when complexity is low.
6. Preserve future extensibility where evidence already exists, not where it is merely imaginable.

# Output Format
- Abstractions to keep
- Abstractions to avoid
- Why the chosen structure is enough

# Guardrails
- Keep changes scoped to the request.
- Be explicit about assumptions and uncertainties.
- Do not add dependencies or abstractions without justification.
- Preserve readability and maintainability over cleverness.
