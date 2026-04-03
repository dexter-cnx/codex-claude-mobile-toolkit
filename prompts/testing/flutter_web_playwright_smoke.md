# Prompt: Flutter Web Playwright Smoke

Use `flutter-web-smoke-testing`.

## Goal

Run a practical smoke test against a Flutter web build or local web surface and return a concise verification result.

## Required checks

- app loads
- first meaningful screen renders
- one primary CTA or navigation path is usable
- obvious console failures are reported
- screenshot evidence is captured if available

## Output format

- target tested
- steps executed
- pass/fail by check
- blockers
- evidence summary
- recommended next action

## Constraints

- favor reliable smoke coverage over brittle deep automation
- do not over-engineer selectors if the job is only a merge gate smoke pass
