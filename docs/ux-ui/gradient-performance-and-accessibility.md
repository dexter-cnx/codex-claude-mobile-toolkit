# Gradient Performance and Accessibility for Flutter UI

## Why this document exists

Gradients can look lightweight while still causing quality problems.

The most common failures are not visual taste problems. They are system failures:

- poor legibility,
- inconsistent semantics,
- overdraw and unnecessary repaint pressure,
- and animation choices that do not respect product constraints.

This document defines the minimum review bar.

## Accessibility rules

### Foreground readability comes first

A gradient background is never more important than legible content.

Before approving a gradient surface, verify:

- title text remains legible across the entire occupied background area,
- icon strokes remain visible at small sizes,
- disabled or secondary text is still distinguishable,
- and CTA labels remain readable in pressed, hovered, focused, and disabled states.

### Prefer gradients behind large, stable content blocks

The safest usage patterns are:

- hero headers,
- feature cards with strong spacing,
- media overlays with scrims,
- large state surfaces.

The riskiest usage patterns are:

- compact chips,
- small typography,
- dense settings rows,
- form helper text,
- and low-emphasis metadata.

### Scrims are functional tools

When text sits on top of media or vivid gradients, use a scrim gradient to stabilize contrast.

Do not depend on luck or background variance.

## Performance rules

### Prefer stable gradients over constantly recomputed ones

Good default strategy:

- define the gradient once,
- move it using translation, scale, rotation, or opacity if animation is needed,
- isolate animation to a contained layer.

Avoid defaulting to:

- continuously changing color-stop arrays,
- rapidly rebuilding multiple layered gradients in scrolling contexts,
- or applying elaborate gradients to every item in long lists.

### Use gradients more carefully in repeated surfaces

Examples that require extra care:

- message lists,
- product grids,
- feed cards,
- infinite scroll pages,
- background layers behind slivers.

In repeated surfaces, prefer:

- simpler gradients,
- fewer layers,
- lower alpha accents,
- and reuse through shared tokens.

### Promote complexity only when the surface justifies it

A splash screen, paywall hero, onboarding scene, or premium profile header can justify a richer layered composition.

A settings tile usually cannot.

## Motion rules

### Gradient motion must support meaning

Animate gradients only when motion communicates something:

- progress,
- focus,
- state transition,
- or ambient premium identity in a limited surface.

Do not animate gradients simply to make a screen feel alive.

### Safe animation preferences

Preferred:

- animate rotation for a sweep ring,
- animate opacity of a glow,
- animate translation of a large background wash,
- animate reveal/mask rather than reconstructing the gradient each frame.

Use caution with:

- changing many stops every frame,
- animating multiple large layered surfaces simultaneously,
- gradients inside scrolling cells.

## Review questions

Use these questions during implementation or design review:

1. What job does this gradient perform?
2. Would a solid surface communicate the same meaning more clearly?
3. Is the foreground readable at all covered positions?
4. Does the gradient exist on a one-off hero surface or a repeated list item?
5. If animated, is the motion tied to meaning?
6. Is the effect cheap enough for the context in which it appears?
7. Is there a token for it, or is the implementation ad hoc?

## Approval bar

Approve the gradient only if it is:

- semantically justified,
- tokenized or clearly reusable,
- accessible in both light and dark themes when applicable,
- and performance-conscious for its rendering context.

