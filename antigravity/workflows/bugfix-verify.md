# Workflow: Bugfix and Verify

## Use when
Fixing a specific defect with a clear reproduction or symptom.

## Steps
1. Capture the symptom and expected behavior.
2. Locate the smallest plausible fix boundary.
3. Implement the fix.
4. Verify the bug path directly if runtime is available.
5. Re-run static checks and tests.
6. Report root cause, fix, and residual risk.

## Required verification
- direct validation of the defect path when possible
- `dart format .`
- `flutter analyze`
- relevant tests
