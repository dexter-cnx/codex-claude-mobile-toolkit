# Nothing-inspired design lane

## Purpose

This lane adds an optional visual-language overlay for teams that want a monochrome, typography-led, industrial-feeling interface on top of the toolkit's normal Flutter UX/UI workflow.

It is not a replacement for product thinking, accessibility, or design-system discipline. It is a style layer with implementation constraints.

## Best fit

Use this lane when the product or feature benefits from:

- dashboard-like or instrumentation-heavy presentation,
- high information density without decorative clutter,
- typography-forward layouts,
- dark/light mode parity,
- strong visual restraint,
- data as the hero.

Good matches:

- system monitors,
- observability panels,
- hardware-adjacent apps,
- tools, settings, dashboards, launchers,
- premium editorial or portfolio sections with sparse content,
- read-mostly product surfaces with strong brand intent.

## Poor fit

Avoid this lane when the product needs:

- playful or highly emotional visual language,
- broad consumer friendliness over precision,
- colorful brand storytelling,
- illustration-heavy onboarding,
- soft, warm, or child-oriented interaction design,
- Material 3 defaults with minimal divergence.

Also avoid forcing this style into dense CRUD flows unless there is a clear brand reason.

## Relationship to the existing toolkit

This lane should sit alongside the existing UX/UI overlay assets:

- `skills/flutter-ux-ui-design-system/`
- `skills/flutter-component-contracts/`
- `skills/flutter-design-review/`
- `skills/flutter-accessibility-audit/`
- `prompts/new_screen.md`
- `prompts/improve_existing_ui.md`
- `prompts/generate_design_tokens.md`
- `prompts/review_flutter_ui.md`

The Nothing-inspired overlay is a specialization, not a new default.

## Core principles

### 1. Typography carries the hierarchy

Prefer hierarchy through size, spacing, weight, and alignment before adding decorative surfaces or extra color.

### 2. Monochrome is the baseline

Most of the interface should rely on black, off-white, gray, and border contrast. Accent color is an event, not a background habit.

### 3. One expressive moment per screen

A screen may have one unusually bold move:
- an oversized metric,
- a dot-matrix headline,
- a red alert value,
- a circular instrument widget,
- a dramatically sparse composition.

More than one tends to feel gimmicky.

### 4. Data should look intentional

Rows, labels, dividers, readouts, and progress states should feel precise. Prefer explicit values next to visuals.

### 5. Dark and light mode are both first-class

Do not create dark mode and derive light mode as an afterthought. The emotional character changes:
- dark mode should feel like an instrument panel,
- light mode should feel like a printed technical manual.

## Flutter implementation stance

This lane should still respect Flutter realities:

- preserve platform ergonomics and accessibility,
- keep touch targets at least 44 dp,
- do not break text scaling,
- keep semantic color roles,
- avoid overfitting tokens to one screen,
- prefer reusable widgets over isolated one-off styling.

### Recommended Flutter building blocks

- `ThemeExtension` for token families,
- `ColorScheme` integration for semantic roles,
- `TextTheme` for type scale mapping,
- reusable primitives for:
  - stat rows,
  - segmented progress bars,
  - mono labels,
  - technical pills,
  - instrument cards,
  - top-line metadata strips.

## Decision rubric

Use this overlay only if the answer to at least three of these is yes:

1. Does the product want a recognizably industrial or monochrome identity?
2. Is typography a major brand carrier for this experience?
3. Are data or state readouts central to the interface?
4. Will the team maintain a token layer instead of hardcoding styles?
5. Can the team support dark and light mode with equal care?

If not, stay with the standard toolkit lane.

## Delivery workflow

1. Decide whether the overlay is appropriate.
2. Generate style-specific semantic tokens.
3. Define component contracts before coding large screens.
4. Implement one pilot screen.
5. Run a style review and an accessibility review.
6. Expand only after the pilot proves maintainable.

## Quality bar

A successful implementation should feel:
- precise,
- spacious but not empty,
- branded but not theatrical,
- dense but still readable,
- distinct without harming usability.

A failed implementation usually looks like:
- generic dark UI with random white text,
- too many outlines and technical widgets,
- accent red used everywhere,
- low-contrast metadata,
- stylized controls that feel worse than stock components.
