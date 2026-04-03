# Task Pack: Bugfix Flow

Use this pack when fixing a bug.

## Workflow
1. State the likely root cause.
2. Identify the narrowest set of affected files.
3. Fix behavior without broad refactors unless necessary.
4. Add or update regression coverage when practical.
5. Call out user-visible behavior changes.

## Rules
- Preserve public behavior outside the bug scope.
- Avoid drive-by cleanup unless it directly reduces bug risk.
- Prefer explicit guards over brittle assumptions.
