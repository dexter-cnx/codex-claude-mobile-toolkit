name flutter-building-layouts
description Builds Flutter screen composition using constraint-aware layouts, responsive sections, and production-ready loading, empty, and error states. Use when creating or refining UI structure.
metadata model last_modified

toolkit/manual-curated
Fri, 03 Apr 2026 16:00:00 +0700

# Building Flutter Layouts for Production Screens

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

Use this skill when the main work is composing widgets into a stable, readable, and adaptable screen.

The goal is not just to make a screen look correct, but to keep the tree maintainable and ready for real states.

## Use when

- implementing a new page from design or specification
- refactoring a cluttered widget tree
- adding responsive breakpoints or adaptive sections
- introducing list/detail, dashboard, form, or detail-page layouts
- standardizing loading, empty, error, and content states

## Do not use when

- the dominant task is navigation, data fetching, or state ownership
- the work is primarily animation choreography
- the task is a tiny visual tweak in a single widget

## Required inputs

- target screen or user flow
- expected data states
- platform targets
- spacing and typography tokens
- interaction expectations
- accessibility constraints

## Deliverables

- screen composition plan
- widget tree breakdown
- reusable section widgets where justified
- state-specific UI handling
- responsiveness notes

## Workflow

1. Identify the screen's major regions.
2. Define the states the screen must represent.
3. Compose the page with predictable containers and spacing tokens.
4. Extract subwidgets only when they improve clarity or reuse.
5. Ensure scrolling behavior is intentional.
6. Validate that layouts survive long text, empty content, and error content.
7. Add semantics and focus order for critical interactions.

## Guardrails

- Do not bury business logic inside build methods.
- Do not create deep anonymous widget trees when named widgets improve clarity.
- Avoid magic spacing values when design tokens exist.
- Prefer stable, predictable layout primitives over clever one-off composition.
- Always implement loading, empty, error, and success states when data can vary.

## Output contract

- layout summary
- widget decomposition
- state handling plan
- responsiveness notes
- verification checklist

## Verification checklist

- content works on small and large widths
- scroll behavior is intentional
- text overflow is handled
- loading, empty, and error states are present where needed
- semantics are added for key controls
- layout code remains readable and modular

## Example request

“Implement the product detail page from this spec and include robust loading, empty, and error states.”
