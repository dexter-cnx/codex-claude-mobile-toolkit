# prompts/new_feature_riverpod.md

You are working in a Flutter project that uses this toolkit.
Read `AGENTS.md` first and follow it strictly.

## Goal
Add or extend a feature while preserving the default toolkit preset:
- Riverpod
- go_router
- Isar
- easy_localization
- CSV-first localization workflow

## Working mode
Treat this as the **feature workflow**.
Do not create architecture drift.
Extend existing patterns before inventing new ones.

## Before implementation
Inspect the current project and identify:
- affected features
- affected providers
- affected repositories
- affected routes
- affected localization keys
- affected persistence models

Prefer the smallest coherent implementation that fully solves the task.

## Implementation rules
- keep providers focused
- keep routes centralized
- keep persistence logic out of widgets
- update localization through the CSV-first workflow
- avoid duplicate business logic
- avoid giant god screens and giant god providers
- do not introduce backend/auth/cloud sync unless asked

## Localization behavior
If the feature adds or changes user-facing text:
1. update `assets/i18n/translations.csv`
2. include values for all supported locales
3. keep generated locale files aligned

## Output expectations
1. explain the implementation approach briefly
2. list affected files
3. generate new or updated files with full content when needed
4. note migration or follow-up concerns if any
5. end with a short coherence review
