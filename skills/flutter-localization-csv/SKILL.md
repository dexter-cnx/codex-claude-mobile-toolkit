---
name: flutter-localization-csv
description: Maintain a CSV-first localization workflow for Flutter using easy_localization and generated JSON runtime assets.
---

# Purpose

Use this skill when a Flutter project should treat one CSV file as the localization source of truth and generate runtime locale files from it.

## Source of truth

- `assets/i18n/translations.csv`

## Runtime artifacts

- `assets/i18n/generated/<locale>.json`

## Required workflow

1. Read `AGENTS.md` first.
2. Inspect whether the project already uses `easy_localization`.
3. Confirm the CSV file exists or create it if the project is being scaffolded.
4. Update translation keys in the CSV instead of hand-editing multiple locale files.
5. Run `dart run scripts/generate_i18n.dart`.
6. Verify the generated JSON files are updated and loadable by the app.

## CSV contract

- the first column should be `key`
- each remaining column should be a locale code such as `en` or `th`
- dotted keys should become nested JSON objects where practical
- empty cells should be called out explicitly in review notes

## Generator expectations

The generator should:

- infer locales from the CSV header
- convert dotted keys into nested JSON
- write one JSON file per locale
- create the output directory if needed
- fail loudly on malformed input rather than silently dropping keys

## Review checklist

- no locale file was edited manually when the CSV should have been the source
- new keys use stable naming
- generated files are included when the runtime depends on them
- `pubspec.yaml` includes the localization assets
- app initialization loads `easy_localization` cleanly
