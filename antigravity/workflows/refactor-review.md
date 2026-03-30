# Workflow: Refactor Review

## Use when
Improving code structure without changing intended user-facing behavior.

## Steps
1. Document the target smell or structural problem.
2. Confirm behavior boundaries that must remain unchanged.
3. Refactor in small steps.
4. Re-run tests and analysis after each meaningful checkpoint.
5. Report behavioral equivalence and any residual risk.

## Required verification
- `dart format .`
- `flutter analyze`
- existing tests
- targeted regression validation where practical
