---
name: flutter-localization-csv-pipeline
description: Maintain CSV-first localization with easy_localization and generated JSON locale files.
version: 1.0.0
tags:
  - flutter
  - toolkit
  - riverpod
---

# Purpose
Maintain CSV-first localization with easy_localization and generated JSON locale files.

# When to Use
- Adding user-visible strings.
- Reviewing localization coverage.
- Improving translation workflow.

# When Not to Use
- Do not hard-code strings in widgets except for obvious developer-only placeholders.

# Repository Assumptions
- **source of truth**: assets/i18n/translations.csv
- **runtime format**: JSON locale files
- **package**: easy_localization

# Instructions
1. Treat the CSV file as canonical unless the repo says otherwise.
2. Use dotted keys grouped by feature and semantic intent.
3. List every new key needed by the change.
4. Ensure locale exports remain synchronized after edits.
5. Flag missing, duplicated, ambiguous, or unused keys.
6. Keep validation and generation steps documented for humans and agents.

# Output Format
- New keys
- CSV rows to add/change
- Locale files affected
- Validation checklist

# Guardrails
- Keep changes scoped to the request.
- Be explicit about assumptions and uncertainties.
- Do not add dependencies or abstractions without justification.
- Preserve readability and maintainability over cleverness.
