# flutter-finalize-change

## Purpose

Coordinate the final hardening pass for a Flutter/mobile change before review or merge.

## Use when

- implementation is complete,
- the task needs a review-ready state,
- verification needs to be summarized explicitly,
- multiple focused checks need to run in a sensible order.

## Do not use when

- the main problem is still root-cause discovery,
- the task is only at the planning stage,
- the repository needs a broad health audit instead of a change-level pass.

## Inputs

- task summary
- changed files
- verification already attempted
- known environment limitations

## Delegates to

- `flutter-testing-checklist`
- `flutter-pr-reviewer`
- `flutter-review-architecture`
- `flutter-review-localization`
- `flutter-review-testing`
- `flutter-review-platform-config`
- `flutter-refactor-safely` only if simplification is justified

## Procedure

1. summarize the change scope,
2. classify which layers and platforms were touched,
3. run or evaluate baseline verification,
4. run the matching focused review skills,
5. identify low-risk simplifications only if clearly useful,
6. produce a verification report,
7. produce a change summary,
8. declare readiness honestly.

## Expected outputs

- `templates/verification-report.md`
- `templates/change-summary.md`
- concise readiness statement
- unresolved risks
- suggested follow-up items

## Verification

Prefer:

- `flutter pub get`
- `dart format .`
- `flutter analyze`
- `flutter test`

If these cannot be run, state it explicitly.
