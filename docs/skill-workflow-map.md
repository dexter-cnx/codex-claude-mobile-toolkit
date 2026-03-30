# Skill and Workflow Map

Use this document as the fastest routing guide when the repo feels too broad.

## Start here

Choose the dominant task shape first:

- New Flutter app foundation: `prompts/new_project_riverpod.md` + `skills/flutter-new-project-bootstrap/`
- New feature in an existing app: `prompts/new_feature_riverpod.md` + `skills/flutter-feature-scaffold/`
- Localization update: `skills/flutter-localization-csv-pipeline/`
- Architecture or implementation review: `prompts/review_architecture.md` + `skills/flutter-pr-reviewer/` or `skills/flutter-review/`
- Build optimization: `prompts/analyze_flutter_build.md` + `skills/flutter-build-orchestrator/`
- Runtime responsiveness and async timing: `prompts/review_event_loop_async.md` + `skills/flutter-event-loop-audit/`
- Cache-first retrofit and staged state: `prompts/cache_first_feature_refactor.md` or `prompts/cache_first_upgrade_existing_project.md` + `skills/flutter-cache-first-rendering/`
- Flutter UX/UI system work: `skills/flutter-ux-ui-design-system/`, `skills/flutter-component-contracts/`, `skills/flutter-design-review/`
- Accessibility audit: `skills/flutter-accessibility-audit/`
- iOS/macOS native-boundary work: `prompts/native_ios_macos_flutter_bridge.md` or `prompts/fix_ios_macos_native_issue.md` + `skills/flutter-apple-native-loop/`
- Antigravity execution shell: `antigravity/README.md` + matching workflow in `antigravity/workflows/`

## Quick distinctions

- Use `flutter-event-loop-audit` when the main question is jank, async scheduling, lifecycle timing, duplicate side effects, or UI-isolate pressure.
- Use `flutter-cache-first-rendering` when the main goal is showing cached data first, preserving optimistic local actions, and keeping refresh errors non-destructive.
- Use `flutter-pr-reviewer` for merge-oriented review of a concrete change set.
- Use `flutter-review` for broader architecture drift review against toolkit conventions.
- Use `flutter-apple-native-loop` only when work crosses into `ios/` or `macos/`.
- Use `flutter-build-orchestrator` and related build analyzers for compile/build/toolchain performance, not runtime UI responsiveness.

## Common combinations

- Feature delivery with UI polish:
  `flutter-feature-scaffold` + `flutter-ui-screen-implementation` + `flutter-design-review`

- Feature delivery with API integration:
  `flutter-feature-scaffold` + `flutter-api-integration-pattern`

- Feature delivery with cache-first UX:
  `flutter-feature-scaffold` + `flutter-cache-first-rendering`

- Review before merge:
  `flutter-pr-reviewer` + `flutter-testing-checklist`

- Native iOS/macOS bug:
  `flutter-bug-investigation` + `flutter-apple-native-loop`

- Startup feels slow:
  `flutter-event-loop-audit` first, then `flutter-cache-first-rendering` if the real issue is blocking first render on remote data

## Rule of thumb

Pick one primary workflow skill first.
Add a second skill only when it covers a genuinely different concern.
Avoid stacking many overlapping review or architecture skills in the same pass unless the task explicitly needs it.
