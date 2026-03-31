# Finalize Mobile Change

## Goal

Take an implemented Flutter/mobile change from **working draft** to **review-ready** with an explicit verification record.

## Use when

- implementation is complete,
- the task is approaching handoff, merge, or PR creation,
- multiple focused checks need to be coordinated,
- the final report must be reliable and reusable.

## Inputs

- task summary
- changed files
- affected feature or modules
- affected platforms
- whether localization inputs changed
- whether API or persistence behavior changed
- known verification limits in the current environment

## Inspect first

- changed files
- `AGENTS.md`
- relevant prompt or skill used during implementation
- nearest existing tests
- localization source files if text changed
- platform files if `android/`, `ios/`, `macos/`, or web config changed

## Execution phases

### 1. Summarize scope
State what changed, which layers were touched, and what the intended result is.

### 2. Classify impact
Mark whether the change affected:

- presentation
- domain
- data
- routing
- localization
- persistence
- API integration
- platform config
- native boundary

### 3. Run baseline verification
Attempt:

- `flutter pub get`
- `dart format .`
- `flutter analyze`
- `flutter test`

If the environment cannot run them, state that explicitly.

### 4. Run focused review passes
Use matching skills where relevant:

- `flutter-review-architecture`
- `flutter-review-localization`
- `flutter-review-testing`
- `flutter-review-platform-config`
- `flutter-pr-reviewer`

### 5. Evaluate simplification opportunities
If the solution works but feels heavier than needed, use `flutter-refactor-safely` only when simplification is low risk and clearly beneficial.

### 6. Build the verification report
Use `templates/verification-report.md`.

### 7. Build the change summary
Use `templates/change-summary.md`.

### 8. Declare merge-readiness honestly
State:

- ready for review,
- ready for merge with caveats,
- or not ready yet.

## Required outputs

- verification report
- change summary
- unresolved risks
- follow-up items
- suggested commit scope
