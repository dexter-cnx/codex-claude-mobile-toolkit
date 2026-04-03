# Generate Nothing-inspired tokens prompt

Generate or refine a Flutter-friendly token proposal for a Nothing-inspired visual language.

## Output

Produce:

1. fit assessment for the target product,
2. semantic color roles for dark and light mode,
3. typography stack and fallbacks,
4. type scale mapping to Flutter `TextTheme`,
5. spacing scale,
6. radius guidance,
7. border and divider guidance,
8. component usage notes,
9. `ThemeExtension` recommendations,
10. migration notes if generic Material 3 tokens already exist.

## Constraints

- keep the palette semantic, not literal,
- preserve dark/light parity,
- keep accent color sparse,
- prefer token reuse over screen-specific exceptions,
- keep all recommendations realistic for Flutter implementation,
- do not assume fonts are already loaded,
- explain where this style should stop rather than over-stylizing the whole app.
