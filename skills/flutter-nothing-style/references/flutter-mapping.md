# Flutter mapping

## Fonts

Preferred stack:
- Display: Doto
- Body and headings: Space Grotesk
- Metadata and labels: Space Mono

Fallbacks:
- display fallback: Space Mono
- body fallback: system sans stack
- mono fallback: JetBrains Mono or platform monospace

## Theme architecture

Recommended setup:

- map broad semantic roles into `ColorScheme`,
- store style-specific roles in a `ThemeExtension`,
- map type sizes into `TextTheme`,
- centralize spacing and radius tokens in a small token class or extension.

### Suggested `ThemeExtension` fields

- `surfaceRaised`
- `borderSubtle`
- `borderVisible`
- `textDisplay`
- `textSecondary`
- `textDisabled`
- `accentSignal`
- `successValue`
- `warningValue`
- `dotGridColor`
- `pillRadius`
- `technicalRadius`

## Typography mapping

Use the Flutter text system approximately like this:

- display large hero metric -> `displayLarge`
- section hero -> `displayMedium`
- screen title -> `headlineMedium`
- section heading -> `titleLarge`
- body -> `bodyLarge`
- secondary body -> `bodyMedium`
- metadata and labels -> `labelSmall` or dedicated mono style

Mono labels should be exposed as a helper style or extension rather than repeated inline.

## Spacing mapping

Use an 8 dp base scale:
- 4
- 8
- 16
- 24
- 32
- 48
- 64
- 96

Prefer spacing over dividers to show grouping. Use dividers only in repeated data rows.

## Component mapping

### Good Flutter primitives for this style

- `Container` with border-only separation
- `DecoratedBox`
- `CustomPainter` for segmented progress bars
- compact reusable `StatRow`
- `ChoiceChip` or custom segmented control with clear active state
- `SwitchThemeData` or custom switch wrapper for mechanical appearance
- token-aware `Card` replacement with no shadow

### Use carefully

- `AnimatedContainer`
- custom charts
- pseudo-hardware widgets

Keep motion subtle and short. Prefer opacity and border change over large transforms.

## Accessibility constraints

- minimum touch target 44 dp,
- verify contrast in both modes,
- preserve screen reader naming,
- do not communicate meaning with color alone,
- keep text scalable,
- preserve explicit values beside charts and progress.

## Anti-patterns in Flutter terms

Avoid:
- hardcoded grayscale values all over widgets,
- one-off `TextStyle` constants scattered across files,
- disabling text scaling to protect layout,
- tiny labels that look stylish but fail readability,
- decorative borders around everything,
- excessive `Stack` composition just to mimic visuals.
