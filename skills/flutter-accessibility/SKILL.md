name flutter-accessibility
description Improves accessibility for Flutter screens by addressing semantics, focus, contrast, readable content, and assistive-technology behavior. Use when usability must extend beyond visual correctness.
metadata model last_modified

toolkit/manual-curated
Fri, 03 Apr 2026 16:00:00 +0700

# Flutter Accessibility Hardening

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

Use this skill to make Flutter interfaces work for more users, not just sighted mouse or touch users in ideal conditions.

## Use when

- auditing or implementing a new screen
- forms and interactive controls are added
- dynamic content or custom widgets need semantics
- the project wants accessibility included in normal delivery quality

## Do not use when

- the change is purely backend or repository work
- the task is a tiny internal prototype with no intention of usability review

## Required inputs

- target screen or flow
- interactive elements
- custom widgets in use
- text and color constraints
- platform targets

## Deliverables

- accessibility issue inventory
- semantics and labeling plan
- focus and interaction plan
- contrast/readability notes
- verification plan

## Workflow

1. Identify user actions and content that must be announced or focused.
2. Label controls and dynamic regions clearly.
3. Ensure touch targets and focus order are sensible.
4. Review text scaling and overflow behavior.
5. Avoid relying on color alone to communicate state.
6. Validate dialogs, forms, and navigation changes for assistive technology behavior.

## Guardrails

- Do not treat accessibility as only screen-reader labels.
- Do not ship unlabeled icon-only actions without justification.
- Ensure error messages and validation feedback are perceivable.
- Make dynamic updates understandable.

## Output contract

- issue list
- semantics fixes
- focus behavior notes
- manual verification plan

## Verification checklist

- controls have meaningful labels
- focus order is logical
- text scaling does not break the screen
- contrast and state communication are acceptable
- critical flows remain usable without relying only on visuals

## Example request

“Accessibility-review this settings screen and harden its forms, toggles, and dialog flows.”
