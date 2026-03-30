# Flutter Design Review Skill

## Purpose

Use this skill to review Flutter UI for consistency, clarity, state completeness, and architecture-aware presentation quality.

## Use this skill for

- reviewing a screen after a feature is added
- finding inconsistencies across pages
- evaluating whether a design system is being applied correctly
- spotting state handling or presentational architecture issues

## Expected outputs

Return:
1. what is working
2. inconsistencies
3. accessibility risks
4. architecture/UI boundary issues
5. recommended refactor order

## Rules

- review both visual and structural quality
- call out repeated patterns that should become shared widgets
- verify loading, empty, error, and disabled states are intentional
- identify when widgets are doing too much

## References

- `references/review-rubric.md`
- `references/state-matrix.md`
- `references/ui-consistency.md`
