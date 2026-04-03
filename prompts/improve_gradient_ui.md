# Improve Existing Gradient UI

You are improving an existing Flutter UI that already uses one or more gradients.

## Goals

Refactor the UI so the gradients become:

- more semantically consistent,
- easier to reuse,
- easier to review,
- more accessible,
- and safer for mobile performance.

## Instructions

1. Inventory every gradient in the current UI.
2. For each one, classify its role:
   - hero surface
   - accent glow
   - directional emphasis
   - ring/progress
   - scrim
   - unnecessary decorative usage
3. Remove any gradient that lacks a strong semantic role.
4. Consolidate reusable gradients into token candidates.
5. Simplify overly complex layering.
6. Check text/icon readability on all gradient-backed surfaces.
7. Flag any animation that rebuilds gradient complexity unnecessarily.
8. Prefer Flutter primitives that match the UI role directly:
   - `LinearGradient`
   - `RadialGradient`
   - `SweepGradient`
9. Produce implementation guidance that is easy to drop into a Flutter design-system layer.

## Required output

Return the result in this structure:

### Gradient inventory
- surface/component:
- current role:
- problem:
- keep / refactor / remove:

### Token candidates
- token name:
- role:
- where used:

### Accessibility risks

### Performance risks

### Recommended refactor plan

### Verification checklist

