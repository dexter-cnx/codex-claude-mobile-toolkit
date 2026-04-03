# flutter-gradient-system

## Purpose

Use this skill when a Flutter UI needs gradient-backed surfaces that should be consistent, token-driven, and safe for production use.

This skill is specifically for design-system-quality gradient decisions, not for adding random visual flair.

## Use this skill when

- a new screen needs a hero gradient or premium surface,
- a component needs a reusable glow, ring, or scrim treatment,
- an existing UI uses gradients inconsistently,
- a design handoff asks for a richer surface language,
- or an agent needs rules for when gradients are and are not appropriate.

## Do not use this skill when

- the task is a general PR review with no significant UI styling decision,
- the UI is dense and productivity-oriented and likely benefits from solid surfaces instead,
- or the request is purely about CSS-specific gradient syntax rather than Flutter product implementation.

## Inputs expected

- screen goal or user story,
- component role,
- target platform surface if relevant,
- existing design tokens if available,
- screenshots or handoff notes if available,
- and any performance sensitivity such as scroll-heavy or low-end target devices.

## Outputs required

- role-based gradient recommendation,
- token recommendations,
- implementation guidance using Flutter primitives,
- accessibility notes,
- performance notes,
- and a short verification plan.

## Gradient taxonomy for Flutter

### Linear

Use for:

- hero headers,
- directional emphasis,
- scrims,
- promotional cards.

Prefer `LinearGradient`.

### Radial

Use for:

- glow,
- focal emphasis,
- ambient depth lighting.

Prefer `RadialGradient`.

### Conic-like / rotational

Use for:

- rings,
- circular progress,
- animated rotational borders,
- segmented circular states.

Prefer `SweepGradient`.

## Decision procedure

1. Identify the semantic role of the surface.
2. Explain why a solid surface is insufficient.
3. Choose the least complex gradient that satisfies the role.
4. Decide whether the gradient belongs in tokens.
5. Check foreground readability.
6. Evaluate rendering context.
7. If animated, select the cheapest meaningful motion strategy.
8. Produce a small verification plan.

## Default rules

- Prefer no more than 2 or 3 colors on most production surfaces.
- Prefer one dominant gradient surface per section.
- Use layered gradients only when every layer has a stated purpose.
- Avoid gradient text except for controlled display content.
- Avoid expensive gradient treatment in repeated list or grid items.
- Prefer semantic token names.

## Token naming rules

Good examples:

- `surface.hero.brand`
- `surface.card.premium`
- `accent.glow.primary`
- `overlay.scrim.media`
- `border.ring.focus`

Bad examples:

- `gradient1`
- `purplePinkThing`
- `fancyHeader`

## Required response format

### Surface role

### Why gradient is justified

### Recommended Flutter primitive

### Proposed token(s)

### Accessibility notes

### Performance notes

### Implementation sketch

### Verification plan

## Verification expectations

Before considering the work done, verify:

- readability of all foreground content,
- theme behavior where applicable,
- performance suitability for the rendering context,
- and whether tokenization reduced ad hoc styling.

