# Skill: flutter-testing

## Purpose
Define a practical test strategy for Flutter features, balancing unit, widget, and integration tests without turning the test suite into ceremony.

## When to use
- Adding tests to a new feature
- Backfilling coverage in a growing app
- Deciding which behaviors deserve which test level

## When not to use
- Demanding exhaustive tests for trivial UI-only changes
- Using integration tests when a smaller test would provide the same confidence

## Required inputs
- feature scope
- risk areas
- state-management approach
- critical user paths

## Optional inputs
- CI constraints
- mocking strategy
- existing test conventions

## Decision rules
- Test behavior, not implementation trivia.
- Prefer the smallest useful test level.
- Cover business rules, mapping, and state transitions where failure matters.
- Do not overfit tests to widget structure.

## Execution steps
1. Identify critical behaviors and failure modes.
2. Map each to unit, widget, or integration level.
3. Note mocks, fixtures, and test data needs.
4. Produce a lean but meaningful plan.

## Output contract
- test scope
- recommended test levels
- candidate test cases
- fixtures/mocks needed
- coverage gaps
- acceptance checklist

## Acceptance checklist
- Critical paths are covered.
- Chosen test level is justified.
- Tests avoid brittle internal details.
- The plan is realistic for the team.

## Common failure modes
- Only testing happy paths.
- Writing integration tests for everything.
- Asserting on fragile widget internals when behavior-level checks would suffice.

## Escalation rules
If architecture makes the feature hard to test, note that explicitly and pair with `flutter-existing-project-audit`.

## Example task
Plan tests for a form submission flow with validation, repository errors, optimistic UI, and retry handling.
