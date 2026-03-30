# Flutter Accessibility Guidelines

## Minimum intent

Target practical accessibility aligned with WCAG 2.2 AA intent where applicable to Flutter apps.

## Key checks

### Semantics
- Interactive elements have a clear role.
- Icon-only buttons have labels or tooltips.
- Decorative visuals are excluded from unnecessary semantics.

### Touch targets
- Targets are comfortably tappable.
- Small icons get larger hit areas.

### Color and contrast
- Important text is readable.
- States are not conveyed by color alone.
- Focus indicators remain visible.

### Text scaling
- Large text should not break critical flows.
- Labels and buttons should wrap or scale intentionally.

### Focus and navigation
- Focus order is logical.
- Focus is visible.
- Custom widgets do not regress keyboard or assistive navigation.

### Forms
- Inputs have clear labels, hints, and error feedback.
- Validation messages are recoverable and not color-only.

### Feedback
- Loading, empty, error, and success states are explicit.

## Flutter tools

Prefer using:
- `Semantics`
- `ExcludeSemantics`
- `Tooltip`
- `Focus`
- `FocusTraversalGroup`
- `Shortcuts`
- `Actions`
