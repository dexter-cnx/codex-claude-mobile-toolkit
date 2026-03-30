# ThemeExtension Mapping

## Recommended approach

Use Flutter theme in layers:

- `ColorScheme` for core surfaces and actions
- `TextTheme` for typography
- `ThemeExtension` for custom semantic and component-level values

## Good candidates for ThemeExtension

- custom border colors
- status colors
- spacing bundles
- component visual variants not covered cleanly by stock theme

## Rule

Do not overuse ThemeExtension for values already well served by Material theme primitives.
