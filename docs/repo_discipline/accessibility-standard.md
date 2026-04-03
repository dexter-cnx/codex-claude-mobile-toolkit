# Accessibility Standard

## Baseline

Every UI change should be reviewed for accessibility before release.

## Flutter baseline checklist

### Semantics
- Important interactive elements expose meaningful labels.
- Icon-only buttons have accessible labels.
- Decorative elements do not create noisy announcements.

### Text scaling
- Layout remains usable under larger text settings.
- Critical controls do not truncate essential meaning.

### Contrast
- Text and interactive states remain distinguishable.
- Status colors are not the only signal.

### Interaction
- Tap targets are reasonably sized.
- Focus order is sensible where keyboard/focus navigation matters.
- Disabled states remain understandable.

### State communication
- Loading states are understandable.
- Empty states explain what happened and what to do next.
- Error states present recovery paths.
- Success feedback is not invisible.

## Required review questions

1. What does a screen reader user hear first?
2. Can a low-vision user recover from failure?
3. Does the layout survive increased text scale?
4. Is the primary action obvious without color alone?
5. Are failure and retry states discoverable?

## Recommended artifacts

For non-trivial UI work, leave:
- a short accessibility review note, or
- a checklist result in `templates/checklists/accessibility-review.md`.
