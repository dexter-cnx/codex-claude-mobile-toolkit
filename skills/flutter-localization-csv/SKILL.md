---
name: flutter-localization-csv
description: Maintain Flutter localization with one CSV source of truth and generated JSON locale files.
---

# Purpose

Use this skill when validating or regenerating project localization files.

# Rules

- CSV is the source of truth.
- Support dotted keys.
- Generate one JSON file per locale.
- Report missing values clearly.

# Process

1. Validate the CSV header.
2. Parse rows.
3. Build nested JSON by dotted keys.
4. Write locale files.
5. Summarize missing translations.
