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
