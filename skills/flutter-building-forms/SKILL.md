name flutter-building-forms
description Builds robust Flutter forms with validation, async submission handling, and user-friendly error feedback. Use when creating multi-field input flows.
metadata model last_modified

toolkit/manual-curated
Fri, 03 Apr 2026 16:00:00 +0700

# Building Validated Forms

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

Use this skill when user input quality, validation, and submit flow are the heart of the task.

## Use when

- implementing login, signup, profile edit, checkout, or settings forms
- adding field validation
- handling async submit and retry
- standardizing form UX patterns across a project

## Do not use when

- the task is mostly layout and contains trivial input
- the feature only has one small local text field
- the main challenge is navigation or remote mapping rather than form behavior

## Required inputs

- field inventory
- validation rules
- server-side validation behavior
- submit states
- accessibility requirements
- localization requirements

## Deliverables

- form structure
- validation strategy
- submit/loading/error state handling
- field focus and keyboard behavior
- verification plan

## Workflow

1. List all fields and rules.
2. Separate local field rules from server-side failures.
3. Keep dirty/pristine and submitting states explicit.
4. Prevent double submit.
5. Return field-specific feedback where possible.
6. Handle success and failure transitions predictably.

## Guardrails

- Do not hide validation rules in scattered callbacks.
- Do not allow duplicate submissions.
- Do not lose entered data on recoverable failure.
- Ensure focus order and keyboard actions are sensible.
- Keep validation strings localizable.

## Output contract

- field list
- validation rules
- submit-state behavior
- error feedback plan
- verification checklist

## Verification checklist

- invalid input is blocked or clearly reported
- server errors are surfaced meaningfully
- focus order is correct
- double-submit is prevented
- loading and success states are represented
- localization and accessibility considerations are included

## Example request

“Build a profile edit form with synchronous field validation, async save, and server-side error display.”
