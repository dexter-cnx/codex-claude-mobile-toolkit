# Skill and Workflow Map

Use this document as the fastest routing guide when the repo feels too broad.

## Start here

Choose the dominant task shape first:

- New Flutter app foundation: `prompts/new_project.md` or `prompts/new_project_riverpod.md` + `skills/flutter-new-project-bootstrap/`
- New feature in an existing app: `prompts/new_feature.md` or `prompts/new_feature_riverpod.md` + `skills/flutter-feature-scaffold/`
- UI/UX quality lane: `prompts/new_screen.md`, `prompts/improve_existing_ui.md`, `prompts/generate_design_tokens.md`, or `prompts/review_flutter_ui.md` + `skills/flutter-ux-ui-design-system/`, `skills/flutter-component-contracts/`, `skills/flutter-design-review/`, `skills/flutter-accessibility-audit/`
- Realtime feature delivery: `prompts/new_realtime_feature.md` + `skills/flutter-realtime-feature-pattern/`
- Multi-provider source integration: `skills/flutter-source-adapter-pattern/`
- Shared-core multi-surface planning: `skills/flutter-shared-core-multi-surface/`
- TV / remote-driven UI: `skills/flutter-tv-ui-pattern/`
- REST catalog project or feature: `prompts/new_catalog_project.md` or `prompts/new_catalog_feature.md` + `skills/flutter-rest-catalog-feature/`
- GraphQL catalog feature: `prompts/new_graphql_feature.md`, `prompts/add_graphql_endpoint.md`, or `prompts/graphql_cache_refactor.md` + `skills/flutter-graphql-feature/`, `skills/flutter-graphql-schema-codegen/`, `skills/flutter-graphql-cache-strategy/`
- Feature planning before implementation: `prompts/plan_feature.md`
- New project blueprint: `prompts/new_project_blueprint.md`
- Formal verification pass before sign-off: `prompts/verification_pass.md`
- Project memory refresh after meaningful changes: `prompts/update_project_memory.md`
- Toolkit coherence review after repo workflow changes: `prompts/coherence_pass.md`
- Architecture-focused review: `prompts/architecture_review.md`
- Design-to-implementation Stitch handoff: `prompts/stitch_handoff.md` + `docs/stitch-handoff-playbook.md`
- Finalize a completed change: `prompts/finalize_mobile_change.md` + `skills/flutter-finalize-change/`
- Repo health audit: `prompts/audit_mobile_repo.md` + `skills/flutter-audit-repo/`
- Bug investigation: `prompts/investigate_flutter_bug.md` + `skills/flutter-bug-investigation/`
- Structured review pass: `prompts/review_mobile_change.md` + `skills/flutter-review-change/`
- Toolkit maintenance and lesson capture: `prompts/self_improve_toolkit.md` + `skills/flutter-self-improve/`
- Offline-first feature: `prompts/patterns/offline_first_repository.md` + `skills/flutter-offline-first/`
- Local indexed search: `prompts/patterns/local_search_fts.md` + `skills/flutter-local-search-fts/`
- Local-first sync: `prompts/patterns/sync_supabase_local_first.md` + `skills/flutter-supabase-sync/`
- Export / backup: `prompts/patterns/export_backup_architecture.md` + `skills/flutter-export-backup/`
- Secure local data: `prompts/patterns/client_side_encryption.md` + `skills/flutter-secure-local-data/`
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
- Use `flutter-realtime-feature-pattern` when the main problem is stream lifecycle, reconnect behavior, or live-edge UX.
- Use `flutter-source-adapter-pattern` when one feature normalizes more than one upstream provider.
- Use `flutter-shared-core-multi-surface` when more than one real delivery surface shares business logic.
- Use `flutter-tv-ui-pattern` when D-pad focus, remote-driven navigation, or TV layout is part of the task.
- Use `flutter-rest-catalog-feature` when the feature is a read-mostly public REST catalog with list/detail/search and cache-first rendering.
- Use `flutter-graphql-feature` when the feature is a read-mostly GraphQL browse/detail flow that benefits from typed operations, codegen, and explicit cache behavior.
- Use `flutter-graphql-schema-codegen` when the main task is schema refresh, operation layout, generated artifacts, or codegen hygiene.
- Use `flutter-graphql-cache-strategy` when the main problem is GraphQL cache behavior, stale refresh UX, partial data, or local-only state composition.
- Use `prompts/plan_feature.md` when the task is medium or large enough that implementation should be preceded by an explicit file-touch, architecture, and verification plan.
- Use `prompts/new_project_blueprint.md` when the repo or app structure does not exist yet and the first need is an implementation-ready blueprint.
- Use `prompts/verification_pass.md` when implementation exists and the main question is whether the current result is actually trustworthy and review-ready.
- Use `prompts/update_project_memory.md` when a task changed durable project knowledge such as architecture decisions, glossary terms, UI rules, known issues, or handoff state.
- Use `prompts/coherence_pass.md` after toolkit-level prompt, skill, template, or doc changes to catch routing drift and registry/runtime updates.
- Use `prompts/architecture_review.md` when the main concern is layer placement, boundary integrity, coupling, or design consistency.
- Use `prompts/stitch_handoff.md` when the starting point is a design exploration that must be converted into screen, state, component, and implementation context.
- Use `flutter-design-review` when you need a broad Flutter UI critique, and `flutter-accessibility-audit` when the task is mostly a11y risk review.
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

- Feature delivery with offline-first storage:
  `flutter-feature-scaffold` + `flutter-offline-first`

- Feature delivery with realtime updates:
  `flutter-feature-scaffold` + `flutter-realtime-feature-pattern`

- Feature delivery with multi-provider sources:
  `flutter-feature-scaffold` + `flutter-source-adapter-pattern`

- Feature delivery with multiple app surfaces:
  `flutter-feature-scaffold` + `flutter-shared-core-multi-surface`

- Feature delivery with TV / remote-driven UI:
  `flutter-feature-scaffold` + `flutter-tv-ui-pattern`

- Feature delivery with REST catalog behavior:
  `flutter-feature-scaffold` + `flutter-rest-catalog-feature` + `flutter-cache-first-rendering`

- Feature delivery with GraphQL catalog behavior:
  `flutter-feature-scaffold` + `flutter-graphql-feature` + `flutter-graphql-schema-codegen` + `flutter-graphql-cache-strategy`

- Review before merge:
  `flutter-pr-reviewer` + `flutter-testing-checklist`

- Medium or large feature delivery with planning and verification:
  `prompts/plan_feature.md` + implementation workflow + `prompts/verification_pass.md` + `prompts/update_project_memory.md`

- Design-first project kickoff:
  `prompts/stitch_handoff.md` + `prompts/new_project_blueprint.md` + `prompts/plan_feature.md`

- Native iOS/macOS bug:
  `flutter-bug-investigation` + `flutter-apple-native-loop`

- Startup feels slow:
  `flutter-event-loop-audit` first, then `flutter-cache-first-rendering` if the real issue is blocking first render on remote data

## Rule of thumb

Pick one primary workflow skill first.
Add a second skill only when it covers a genuinely different concern.
Avoid stacking many overlapping review or architecture skills in the same pass unless the task explicitly needs it.
