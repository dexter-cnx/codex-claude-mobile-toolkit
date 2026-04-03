name flutter-localizing-apps-csv-json
description Configures Flutter localization for toolkit projects that use a CSV source of truth and generated JSON locale files. Use when introducing or extending localization.
metadata model last_modified

toolkit/manual-curated
Fri, 03 Apr 2026 16:00:00 +0700

# Localizing Apps with CSV Source of Truth

## Contents

  * Purpose
  * Use when
  * Do not use when
  * Required inputs
  * Deliverables
  * Workflow
  * Guardrails
  * Output contract
  * Verification checklist
  * Example request

## Purpose

Use this skill to implement localization in a way that stays maintainable as the app grows.

This version is opinionated for toolkit repositories that use:
- `assets/i18n/translations.csv`
- `scripts/generate_i18n.dart`
- generated locale JSON files

## Use when

- adding localization to a project
- introducing new locale keys
- refactoring hardcoded strings
- validating translation generation workflow

## Do not use when

- the project uses a fundamentally different localization pipeline and should keep it
- the task only changes a single hardcoded prototype string
- the team has explicitly deferred localization

## Required inputs

- supported locales
- key naming conventions
- CSV source-of-truth policy
- generation script expectations
- fallback locale behavior

## Deliverables

- locale setup plan
- key organization
- generation flow alignment
- missing-key handling
- verification plan

## Workflow

1. Confirm locale inventory and fallback behavior.
2. Keep source strings in the CSV file.
3. Use dotted keys to preserve nested structure where applicable.
4. Generate locale JSON from the script instead of hand-editing generated outputs.
5. Replace hardcoded strings in UI and validation messages.
6. Validate missing or stale translations.

## Guardrails

- Do not edit generated files as the source of truth.
- Do not introduce inconsistent key naming.
- Keep validation and error strings localizable.
- Ensure empty/loading/error states are also localized.
- Prefer semantic keys over screen-specific noise where reuse is likely.

## Output contract

- locale inventory
- key additions
- generation notes
- affected screens/components
- verification plan

## Verification checklist

- source-of-truth CSV is updated
- generated JSON is in sync
- UI strings no longer remain hardcoded where in scope
- locale fallback is defined
- missing keys are detectable

## Example request

“Add Japanese locale support using the CSV-to-JSON generation flow and localize the auth screens.”
