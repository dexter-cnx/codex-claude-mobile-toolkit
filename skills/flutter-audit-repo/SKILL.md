# flutter-audit-repo

## Purpose

Run a structured health audit of a Flutter/mobile repository.

## Use when

- architecture drift is suspected,
- the repository feels broad or inconsistent,
- onboarding needs a clear health snapshot,
- maintainers want prioritized cleanup guidance.

## Delegates to

- `flutter-repo-conventions`
- `flutter-simple-clean-architecture-guard`
- `flutter-state-management-pattern`
- `flutter-review-localization`
- `flutter-review-testing`
- `flutter-review-platform-config`
- `flutter-pr-reviewer` when a recent change set is the audit focus

## Core audit dimensions

- architecture boundaries
- state management consistency
- routing coherence
- localization pipeline quality
- testing posture
- data and integration hygiene
- platform/tooling health
- stale code and drift signals
- delivery maturity

## Expected outputs

- `templates/audit-report.md`
- prioritized recommendations
- suggested next workflow lane

## Verification

The audit should cite inspected evidence, not just opinions.
