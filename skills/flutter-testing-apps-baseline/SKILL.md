name flutter-testing-apps-baseline
description Establishes a pragmatic testing baseline for Flutter features using unit, widget, and targeted integration coverage. Use whenever a skill-driven implementation changes behavior.
metadata model last_modified

toolkit/manual-curated
Fri, 03 Apr 2026 16:00:00 +0700

# Flutter Testing Baseline

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

Use this skill to ensure changes are verified at the right level rather than relying on visual confidence or hope.

## Use when

- adding new feature behavior
- refactoring business logic or state logic
- changing navigation rules
- introducing data mapping or persistence behavior
- hardening a fragile feature with a minimum useful safety net

## Do not use when

- the task is documentation-only
- the repository explicitly prohibits tests in the affected layer
- the change is so trivial that a documented manual check is more appropriate and justified

## Required inputs

- changed behaviors
- affected layers
- existing test stack
- target risks
- CI expectations

## Deliverables

- recommended test levels
- test cases or coverage plan
- manual verification steps where automation is unavailable
- regressions to watch

## Workflow

1. Identify the highest-risk behavior change.
2. Cover pure logic at the unit level first.
3. Cover rendering and interaction at the widget level where valuable.
4. Use integration tests selectively for cross-layer flows.
5. Add manual verification only as a complement, not a substitute without reason.

## Guardrails

- Do not write broad brittle tests that assert implementation trivia.
- Prefer behavior-oriented assertions.
- Do not skip verification without explaining why.
- Keep tests aligned with actual user-facing or domain-facing contracts.

## Output contract

- test scope by level
- key test cases
- manual checks
- residual risk summary

## Verification checklist

- the most important changed behavior is covered
- tests are maintainable
- manual steps exist for anything not automated
- known gaps are explicit
- pass criteria are clear

## Example request

“Define a testing baseline for this feature refactor and add the most important unit and widget coverage.”
