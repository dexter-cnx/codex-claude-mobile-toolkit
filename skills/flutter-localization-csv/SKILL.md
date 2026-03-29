# Skill: Flutter Localization (CSV-first)

## Purpose
Use this skill when a Flutter project should keep one CSV file as the source of truth for multiple locales and generate runtime locale assets for the app.

## Source of truth
- `assets/i18n/translations.csv`

## Runtime artifacts
- generated JSON locale files such as:
  - `assets/i18n/generated/en.json`
  - `assets/i18n/generated/th.json`

## Recommended runtime package
- `easy_localization`

## Workflow
1. update the CSV file
2. run `dart run scripts/generate_i18n.dart`
3. verify generated locale JSON files
4. ensure the app loads generated locale files

## Rules
- do not create parallel source translation files
- do not hardcode user-facing strings in widgets unless clearly temporary and developer-only
- keep locale additions scalable
- prefer dotted keys that map cleanly to nested JSON
- keep key naming consistent and readable

## Generator expectations
The generator should:
- read the CSV header to discover locales
- use the first column as `key`
- support dotted keys like `home.title`
- generate nested JSON when practical
- create deterministic output
- fail loudly on malformed CSV structure when appropriate

## When editing localization
Always check:
- were new user-facing strings added?
- were all supported locales updated?
- are generated files still aligned with the CSV?

## References
See `references/generator-pattern.md`.
