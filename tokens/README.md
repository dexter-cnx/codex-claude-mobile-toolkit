# Tokens

This folder is the home for token and design-system guidance used by the toolkit.

Recommended categories:

- color roles
- typography roles
- spacing scale
- radius scale
- elevation guidance
- component-level token usage notes

## Token philosophy

Prefer semantic roles over raw values.

Good:
- `primaryContainer`
- `dangerText`
- `surfaceMuted`
- `spacingMd`

Less durable:
- `blue500`
- `grey13`
- `padding17`

## Flutter guidance

Token outputs should map cleanly to:
- `ColorScheme`
- `TextTheme`
- spacing constants or extension helpers
- shape and component theme configuration

Keep token guidance realistic for Flutter implementation and Material 3 compatibility.
