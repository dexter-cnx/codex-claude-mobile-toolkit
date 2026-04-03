# Nothing-inspired Component Spec

## Name

## Purpose

## Style role
- hero
- standard
- tertiary utility

## Ownership
- shared/core or feature-local:

## Token dependencies
- colors:
- typography:
- spacing:
- border:
- radius:
- motion:

## Public API
- 

## Supported states
- default
- pressed
- focused
- disabled
- loading
- error
- selected
- other:

## Layout and sizing behavior
- min height:
- expansion behavior:
- text wrapping behavior:
- icon rules:
- value and unit rules:

## Hierarchy behavior
- what is primary:
- what is secondary:
- what is tertiary:

## Accessibility behavior
- semantic label:
- focus order:
- contrast expectations:
- minimum touch target:
- non-color meaning backup:

## Theming hooks
- `ColorScheme` usage:
- `ThemeExtension` usage:
- `TextTheme` usage:

## Localization and scaling risks
- 

## Usage example

```dart
// example
```

## Verification checklist
- hierarchy remains clear at text scale 1.3x and above
- dark and light mode both render intentionally
- values remain readable without relying only on color
- no hardcoded visual constants outside token/theme surfaces
