---
name: flutter-api-integration-pattern
description: Add or review API integration using Dio and clean data mapping patterns.
version: 1.0.0
tags:
  - flutter
  - toolkit
  - riverpod
---

# Purpose
Add or review API integration using Dio and clean data mapping patterns.

# When to Use
- Adding a new endpoint.
- Reviewing remote datasource design.
- Improving error handling or pagination.

# When Not to Use
- Do not expose DTOs directly to presentation unless the repo intentionally does so.

# Repository Assumptions
- **network client**: Dio
- **mapping**: DTO/model -> entity where warranted

# Instructions
1. Define request/response contracts first.
2. Implement remote datasource logic with clear responsibilities.
3. Map transport-level errors into app-level failures or states.
4. Handle auth, timeout, pagination, retry, and cancellation according to the project needs.
5. Keep serialization/parsing out of UI and route layers.
6. Document optimistic assumptions and backend dependencies.
7. Add focused tests for critical parsing and error behavior.

# Output Format
- API contract summary
- Files to add/update
- Error handling plan
- Tests to add

# Guardrails
- Keep changes scoped to the request.
- Be explicit about assumptions and uncertainties.
- Do not add dependencies or abstractions without justification.
- Preserve readability and maintainability over cleverness.
