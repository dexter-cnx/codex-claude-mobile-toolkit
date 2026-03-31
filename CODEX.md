# CODEX.md

Use this repository as a task router and execution guide for mobile-focused code changes.

## Primary behavior
- Find the closest matching skill.
- Keep changes bounded.
- Respect the repository's existing stack and conventions.
- Generate file trees and patches that are easy to apply incrementally.

## Code generation rules
- Do not invent architecture layers without need.
- Avoid changing unrelated files.
- Prefer explicit file paths in plans.
- When adding new features, define route, state, localization keys, and repository boundaries up front.
- When auditing, separate findings from recommendations and from patch steps.

## Default output sections
- assumptions
- proposed file changes
- implementation notes
- validation checklist

## Strong defaults
- no business logic in widgets
- no JSON parsing in presentation
- no hidden navigation coupling
- no unbounded refactors unless the user asked for them

## UX/UI lane

When the task is about screen quality, component contracts, or design tokens, route through:

- `prompts/new_screen.md`
- `prompts/improve_existing_ui.md`
- `prompts/generate_design_tokens.md`
- `prompts/review_flutter_ui.md`
- `skills/flutter-ux-ui-design-system/`
- `skills/flutter-component-contracts/`
- `skills/flutter-design-review/`
- `skills/flutter-accessibility-audit/`
- `core/routing/ui-ux-lane.md`
- `core/checklists/ui-screen-quality.md`
- `docs/ux-ui/mobile-design-system-lane.md`
- `tokens/README.md`
