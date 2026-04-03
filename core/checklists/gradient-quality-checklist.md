# Gradient Quality Checklist

Use this checklist whenever a change introduces or modifies gradient-backed UI.

## Semantic fit

- The gradient has a defined role: hero surface, glow, ring, scrim, or emphasis.
- A solid fill would not communicate the same intent as clearly.
- The gradient is not decorative noise.

## Token and reuse discipline

- A named gradient token is used when the style is reusable.
- Token naming describes semantic role, not appearance.
- The implementation does not hardcode gradient values across many files.

## Visual quality

- The direction, center, or sweep behavior matches the UI layout.
- Stop placement feels deliberate rather than arbitrary.
- Layering is minimal and explainable.
- Hard edges are used only when segmentation or structure benefits.
- The gradient does not flatten hierarchy or compete with core content.

## Readability and accessibility

- Text remains readable on the entire occupied surface.
- Icons remain legible at target sizes.
- Disabled, secondary, and tertiary foreground states still work.
- Scrims are used where content sits on vivid or image-backed surfaces.
- Gradient text is avoided for dense or small content.

## Performance

- The gradient is appropriate for its rendering context.
- Repeated list or grid items do not use unnecessary gradient complexity.
- Animation, if any, favors transform/opacity/rotation over heavy recomputation.
- The UI does not rely on many layered animated gradients at once.

## Verification

- Light theme checked.
- Dark theme checked.
- Pressed/focused/disabled states checked if interactive.
- Screenshot or visual evidence captured for review.
- Any new token or pattern is documented.

