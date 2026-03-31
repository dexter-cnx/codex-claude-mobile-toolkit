# flutter-review-change

## Purpose

Coordinate a structured review pass across multiple quality dimensions for a single change.

## Use when

- a change needs review findings,
- a second-pass quality check is needed,
- you want more structure than an ad hoc PR note.

## Delegates to

- `flutter-pr-reviewer`
- `flutter-review-architecture`
- `flutter-review-localization`
- `flutter-review-testing`
- `flutter-review-platform-config`

## Expected outputs

- findings summary
- strengths
- risks
- requested follow-ups
- readiness assessment

## Verification

This skill reviews the change and its evidence.  
It should not pretend to have run checks that were only proposed.
