# Flutter Design System Mapping

## Purpose

Translate design-system concepts into practical Flutter implementation patterns for a toolkit-driven workflow.

## Token hierarchy

Use 3 levels of design tokens:

1. Primitive tokens
   - raw palette
   - base spacing
   - radius values
   - font sizes
2. Semantic tokens
   - textPrimary
   - surfaceContainer
   - actionPrimary
   - borderSubtle
3. Component tokens
   - buttonPrimaryBackground
   - buttonPrimaryForeground
   - inputBorderFocused
   - cardPaddingMd

## Flutter mapping

### Primitive tokens
Store as JSON or generated constants.
Examples:
- `tokens/colors.json`
- `tokens/spacing.json`
- `tokens/typography.json`

### Semantic theme layer
Map semantic tokens into:
- `ColorScheme`
- `TextTheme`
- `ThemeExtension`

### Component layer
Map component tokens into reusable widgets or themed wrappers such as:
- `AppPrimaryButton`
- `AppTextField`
- `AppCard`
- `EmptyStateView`

## Recommended implementation pattern

```text
lib/
├─ app/
│  ├─ theme/
│  │  ├─ app_theme.dart
│  │  ├─ app_color_scheme.dart
│  │  ├─ app_text_theme.dart
│  │  ├─ theme_extensions.dart
│  │  └─ design_tokens/
│  └─ widgets/
├─ core/
│  ├─ design_system/
│  └─ accessibility/
└─ features/
```

## Rules

- Avoid hardcoded styling in feature widgets unless there is a strong local reason.
- Prefer semantic token usage in widget implementations.
- Shared components should not depend on feature-specific entities.
- Important components should document states such as default, disabled, loading, focused, error, success, or selected when relevant.

## Material 3 guidance

Use Material 3 as the behavioral base unless the project intentionally overrides it.
Custom widgets should preserve expected interaction quality, accessibility, and consistency.
