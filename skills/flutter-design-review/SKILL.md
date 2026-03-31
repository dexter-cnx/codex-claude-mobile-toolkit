# flutter-design-review

## Purpose
Run a structured UX/UI quality review on Flutter code or screen plans.

## When to use
Use this skill when:
- a screen has been implemented and needs critique,
- a PR has meaningful UI change,
- a feature feels correct but not polished,
- the team wants explicit UX findings before merge.

## Review dimensions
- objective clarity
- information hierarchy
- spacing and rhythm
- interaction clarity
- state handling
- readability
- consistency with existing components
- localization resilience
- accessibility
- maintainability of the implementation

## Procedure
1. Identify the screen objective and primary user action.
2. Inspect current layout and action hierarchy.
3. Inspect explicit handling of loading, empty, error, and success.
4. Check whether text length and localization can break the layout.
5. Check component consistency against the repo's existing UI patterns.
6. Review forms, lists, dialogs, and navigation affordances where relevant.
7. Rate issues by severity and implementation cost.
8. Suggest fixes that fit the current repo instead of assuming a greenfield redesign.

## Output contract
Use `templates/ux-audit-report.md` when possible.

Produce:
- summary
- findings
- severity
- recommended fixes
- implementation complexity
- verification notes

## Verification
Base findings on visible code structure, theme usage, and explicit state handling.
Do not claim runtime behavior that was not observed or verified.
