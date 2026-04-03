# flutter-nothing-style

## Purpose

Apply a Flutter-adapted, Nothing-inspired visual language to design tokens, component specs, or screen implementation plans without abandoning the toolkit's normal product, accessibility, and maintainability standards.

## When to use

Use this skill when:
- the project explicitly wants a Nothing-inspired or industrial monochrome UI,
- a screen needs typography-led hierarchy and sparse composition,
- the team is creating or reviewing tokens for this visual language,
- a screen plan needs adaptation into reusable Flutter widgets and theme hooks.

Do not use this skill automatically for generic UI work.

## Position inside the toolkit

This skill is an overlay on top of:
- `flutter-ux-ui-design-system`
- `flutter-component-contracts`
- `flutter-design-review`
- `flutter-accessibility-audit`

Prefer this skill only when the style choice is explicit.

## Working stance

Treat the style as a design language, not as a mandate to copy another product.

Always adapt to:
- Flutter layout behavior,
- text scaling,
- touch ergonomics,
- semantic colors,
- localization,
- dark and light mode parity,
- maintainable widget composition.

## Procedure

1. Confirm the target surface and user goal.
2. Confirm whether the style is suitable for the screen type.
3. Declare required fonts and fallback plan.
4. Establish semantic tokens before discussing widgets.
5. Define the screen's primary, secondary, and tertiary hierarchy.
6. Choose one expressive moment only.
7. Prefer existing toolkit components and theme hooks when possible.
8. Translate decorative ideas into reusable Flutter primitives.
9. Review contrast, tap target size, and text scaling risk.
10. Produce implementation guidance that a Flutter agent can execute safely.

## Output contract

Produce:
- fit assessment,
- hierarchy plan,
- semantic token implications,
- recommended component set,
- Flutter implementation notes,
- accessibility and localization cautions,
- specific do and do-not guidance.

When the task is implementation-oriented, point to:
- `references/flutter-mapping.md`
- `references/component-guidelines.md`
- `references/adaptation-guide.md`

## Non-negotiables

- Keep accent usage sparse.
- Avoid shadows and gratuitous visual effects.
- Do not sacrifice clarity for style.
- Do not turn every widget into a special snowflake.
- Keep the result production-friendly for Flutter teams.
