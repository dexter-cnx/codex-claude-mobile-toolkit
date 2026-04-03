# Gradient Surface Pattern

Use this pattern when designing or implementing a Flutter UI surface that requires a gradient.

## Objective

Produce a gradient-backed UI surface that is semantically justified, token-driven, accessible, and cheap enough for the target context.

## Required reasoning sequence

1. Identify the role of the surface.
   Choose one:
   - hero
   - accent glow
   - directional emphasis
   - ring/progress
   - scrim

2. Explain why a solid fill is not enough.

3. Select the simplest gradient type that matches the role.
   - linear for directional movement or scrims
   - radial for focal light/glow
   - sweep for ring/progress/conic-style surfaces

4. Decide whether the gradient must become a reusable token.
   Tokenize it if it is part of:
   - brand language,
   - recurring component styling,
   - or a repeated UX pattern.

5. Verify foreground readability.

6. Check rendering context.
   Call out whether the surface is:
   - one-off hero UI,
   - reusable component,
   - or repeated list/grid content.

7. If animation is requested, prefer transform/opacity/rotation strategies.

## Constraints

- Do not create a decorative gradient without a semantic role.
- Do not use more color complexity than necessary.
- Avoid gradient text except for controlled display use.
- Avoid expensive layered animation in repeated list items.
- Keep output aligned with Flutter-first implementation.

## Expected output format

Return:

1. `Surface role`
2. `Why gradient is justified`
3. `Recommended Flutter primitive`
4. `Proposed token name`
5. `Accessibility notes`
6. `Performance notes`
7. `Implementation sketch`

## Example token naming

- `surface.hero.brand`
- `surface.card.premium`
- `accent.glow.primary`
- `border.ring.focus`
- `overlay.scrim.media`

