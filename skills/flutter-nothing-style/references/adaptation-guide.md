# Flutter Nothing-style adaptation guide

## Goal

Adapt a Nothing-inspired design language into a Flutter-first implementation model that remains reusable, testable, and accessible.

## What is worth adopting

### High-value imports

These ideas map well into the toolkit:

- typography-led hierarchy,
- monochrome-first semantic palette,
- strict spacing rhythm,
- sparse but deliberate composition,
- mono label treatment for metadata,
- segmented progress treatment for precision-oriented metrics,
- strong dark/light mode parity,
- data-forward widget styling.

These are high leverage because they change many screens through tokens and reusable widgets rather than through one-off custom art direction.

## What should be adapted instead of copied

### Platform mapping

The upstream references speak mainly in HTML/CSS and SwiftUI terms. In the toolkit, that material should be translated into:
- `ThemeExtension`,
- `TextTheme`,
- shared widget contracts,
- component examples,
- Flutter-specific layout constraints.

### Font assumptions

Do not assume all fonts are always available. Provide:
- preferred family,
- fallback family,
- emergency fallback for build or licensing constraints.

### Mechanical controls

Industrial-looking controls should still feel native enough for touch interaction. Preserve clarity and hit area before fidelity to the reference look.

## What should not be imported as-is

Low-value or risky imports:

- tightly web-specific CSS implementation details,
- style decisions that make forms harder to read,
- overly rigid anti-patterns that conflict with accessibility,
- strong brand mimicry that prevents product identity from emerging,
- overuse of dot-matrix motifs as decoration.

## Screen selection strategy

Pilot on surfaces where the visual language gives product value:

- dashboard home,
- summary cards,
- system status,
- performance monitors,
- settings index,
- detail screens with quantitative metrics.

Do not start with:
- long form entry screens,
- dense CRUD admin tables on mobile,
- onboarding that needs emotional warmth,
- children or family-oriented flows.

## Recommended artifacts

For a production rollout, create these in order:

1. semantic token pack,
2. component spec for 6-8 core widgets,
3. one pilot screen implementation,
4. review report,
5. expansion checklist.

## Review questions

Before approving adoption, ask:

- Does the hierarchy read in under two seconds?
- Is the accent color still rare enough to mean something?
- Are labels consistently treated?
- Does light mode feel designed rather than mechanically inverted?
- Can the same primitives support multiple screens?
- Would a non-designer Flutter engineer know how to extend this safely?
