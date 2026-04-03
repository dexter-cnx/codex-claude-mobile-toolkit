name flutter-animating-apps
description Adds purposeful motion, transitions, and animated feedback without letting animation overwhelm maintainability. Use when motion is part of the user experience requirement.
metadata model last_modified

toolkit/manual-curated
Fri, 03 Apr 2026 16:00:00 +0700

# Flutter Animation and Motion

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

Use this skill when motion should clarify, delight, or reinforce user feedback.

## Use when

- adding transitions between screens or states
- animating appearance, expansion, reorder, or feedback
- improving perceived quality through motion

## Do not use when

- the task is pure layout or theming
- animation would distract from clarity
- the repository or platform constraints do not justify extra motion complexity

## Required inputs

- target interaction or transition
- performance constraints
- reduced-motion expectations
- component or screen scope

## Deliverables

- animation intent
- chosen animation primitives
- state transition mapping
- performance notes
- verification plan

## Workflow

1. Define what the animation communicates.
2. Choose the simplest primitive that achieves the intent.
3. Keep animation state and business state distinct.
4. Validate performance on target devices.
5. Respect reduced-motion or subtlety expectations.

## Guardrails

- Do not animate everything.
- Avoid coupling business logic to animation timing.
- Prefer clear motion over ornamental complexity.
- Keep frame performance in mind.

## Output contract

- motion summary
- implementation approach
- performance considerations
- verification plan

## Verification checklist

- animation matches a user-facing purpose
- no obvious jank appears on target devices
- reduced-motion or subtle fallback is considered
- implementation remains readable

## Example request

“Add polished but restrained transitions for expanding cards into a detail screen.”
