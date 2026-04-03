name flutter-theming-material3-tokens
description Implements app-wide Flutter theming using Material 3 and repository design tokens. Use when establishing or refining visual consistency.
metadata model last_modified

toolkit/manual-curated
Fri, 03 Apr 2026 16:00:00 +0700

# Material 3 Theming with Design Tokens

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

Use this skill to make visual styling systematic instead of ad hoc.

## Use when

- defining global colors, typography, spacing, and radius decisions
- applying Material 3 theming
- mapping design tokens into Flutter theme configuration
- reducing per-widget style duplication
- introducing dark mode or multiple brand surfaces

## Do not use when

- the task is a small one-off visual fix
- the project intentionally avoids a centralized theme
- the change is primarily animation or layout logic

## Required inputs

- design tokens or brand constraints
- supported color modes
- component families in scope
- accessibility contrast requirements
- existing theme setup

## Deliverables

- theme structure
- token mapping plan
- component theming decisions
- dark/light strategy
- verification plan

## Workflow

1. Identify semantic tokens.
2. Map tokens into ThemeData and component themes.
3. Normalize buttons, inputs, app bars, and surfaces.
4. Keep widget-level overrides rare and intentional.
5. Validate contrast and readability.
6. Ensure typography and spacing scale coherently.

## Guardrails

- Do not hardcode arbitrary colors throughout widgets.
- Prefer semantic tokens over raw values.
- Keep component styling centralized where possible.
- Avoid inconsistent dark-mode hacks.
- Ensure token names reflect meaning, not only appearance.

## Output contract

- token-to-theme mapping
- themed component inventory
- light/dark notes
- override policy
- verification plan

## Verification checklist

- core components use centralized theme values
- token mapping is understandable
- contrast is acceptable
- dark/light behavior is coherent
- widget-level style duplication is reduced

## Example request

“Map these design tokens into a Material 3 Flutter theme and normalize buttons, cards, inputs, and app bars.”
