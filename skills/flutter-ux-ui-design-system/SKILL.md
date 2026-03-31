# flutter-ux-ui-design-system

## Purpose
Define or refine a Flutter-oriented design-system direction for a product, feature, or screen family.

## When to use
Use this skill when:
- a repo needs more consistent visual rules,
- a feature needs token-aware styling guidance,
- a new screen should align with an explicit design direction,
- the team needs a practical bridge between design intent and Flutter implementation.

## Inputs
- app purpose or feature purpose
- target screen or flow
- existing theme files if any
- existing reusable components if any
- platform constraints
- localization and accessibility expectations

## Procedure
1. Identify the product type and the screen's job.
2. Identify the dominant action model: browse, read, input, compare, manage, approve, track, or inspect.
3. Determine presentation priorities:
   - content-first,
   - action-first,
   - data-dense,
   - workflow-driven,
   - media-forward,
   - form-heavy.
4. Propose token-level guidance:
   - semantic colors,
   - typography scale,
   - spacing rhythm,
   - shape and elevation rules.
5. Map the guidance to real Flutter surfaces:
   - app bars,
   - cards,
   - lists,
   - forms,
   - bottom sheets,
   - dialogs,
   - buttons,
   - chips,
   - empty and error states.
6. Check mobile-specific risks:
   - long text,
   - small screens,
   - touch target size,
   - keyboard overlap,
   - dense layouts,
   - offline or stale-data messaging.
7. Summarize the recommended system in implementation-ready language.

## Output contract
Produce:
- design direction summary
- token guidance
- component usage guidance
- state presentation guidance
- anti-patterns to avoid
- implementation notes for Flutter

## Verification
Validate against:
- current theme structure
- existing component patterns
- localization needs
- accessibility expectations

Mark any missing theme or component evidence as unverified.
