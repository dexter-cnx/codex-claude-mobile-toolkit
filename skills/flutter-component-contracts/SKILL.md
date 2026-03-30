# Flutter Component Contracts Skill

## Purpose

Use this skill to define reusable Flutter components before implementation so agents generate clearer, more stable, and more maintainable widget APIs.

## Use this skill for

- buttons
- text fields
- cards
- banners
- list items
- empty states
- app bars and section headers

## Expected outputs

Usually return:
1. purpose
2. public API
3. supported states
4. sizing/layout behavior
5. accessibility behavior
6. theming hooks
7. example usage

## Rules

- prefer small and focused APIs
- do not leak feature-specific business rules into shared widgets
- identify whether the widget belongs in shared/core or only inside a feature
- define accessibility behavior explicitly

## References

- `references/button-contract.md`
- `references/textfield-contract.md`
- `references/card-contract.md`
