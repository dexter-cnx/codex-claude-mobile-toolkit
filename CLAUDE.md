# CLAUDE.md

## How to operate in this repo

Read `AGENTS.md` first. Treat it as the primary source of truth for architecture, stack defaults, workflow selection, localization rules, realtime patterns, multi-surface boundaries, TV/non-touch constraints, and build optimization behavior.

This file exists to adapt the same toolkit conventions to Claude Code usage. Do not diverge from `AGENTS.md` unless the user explicitly asks for a different setup.
If the task is explicitly routed through Antigravity, use `antigravity/README.md` and the matching workflow as an additional execution layer, not as a replacement for the default Claude Code flow.

---

## Default operating sequence

For most tasks in a project using this toolkit, follow this order:

1. identify the workflow category
2. read the relevant prompt in `prompts/` if one exists
3. read the matching skill in `skills/` if one exists
4. inspect the current codebase before editing
5. make the smallest coherent set of changes that fully solves the task
6. end with a short coherence review

---

## Pipeline-first routing

When the task needs an explicit end-to-end lane, prefer a pipeline prompt first:

- finalize change: `prompts/finalize_mobile_change.md`
- repo audit: `prompts/audit_mobile_repo.md`
- bug investigation: `prompts/investigate_flutter_bug.md`
- structured review: `prompts/review_mobile_change.md`
- toolkit self-improvement: `prompts/self_improve_toolkit.md`
- realtime feature delivery: `prompts/new_realtime_feature.md`

## Common routing

- realtime / stream-driven feature → `prompts/new_realtime_feature.md` + `skills/flutter-realtime-feature-pattern/`
- multiple upstream providers → `skills/flutter-source-adapter-pattern/`
- shared core across more than one app shell → `skills/flutter-shared-core-multi-surface/`
- Android TV or remote-driven UI → `skills/flutter-tv-ui-pattern/`

---

## Workflow categories

Map requests into one of these categories:

- **project foundation**
- **feature work**
- **localization maintenance**
- **architecture review**
- **persistence evolution**
- **runtime responsiveness**
- **cache-first retrofit**
- **realtime feature work**
- **source adapter / multi-provider integration**
- **shared-core multi-surface planning**
- **TV / non-touch UI work**
- **apple-native boundary work**
- **build optimization**
- **plugin-style packaging**

If a request spans multiple categories, handle the dominant category first and then apply the others only where necessary.

---

## Preferred skill mapping

When a matching skill exists, prefer these defaults:

- feature work: `flutter-feature-scaffold`
- localization maintenance: `flutter-localization-csv-pipeline`
- API integration work: `flutter-api-integration-pattern`
- bug investigation: `flutter-bug-investigation`
- runtime responsiveness review: `flutter-event-loop-audit`
- cache-first retrofit and staged state: `flutter-cache-first-rendering`
- finalize change orchestration: `flutter-finalize-change`
- repo audit orchestration: `flutter-audit-repo`
- structured review orchestration: `flutter-review-change`
- toolkit self-improvement: `flutter-self-improve`
- commit readiness: `flutter-commit-readiness`
- realtime feature work: `flutter-realtime-feature-pattern`
- source adapter / multi-provider integration: `flutter-source-adapter-pattern`
- shared-core multi-surface planning: `flutter-shared-core-multi-surface`
- TV / non-touch UI work: `flutter-tv-ui-pattern`
- offline-first feature work: `flutter-offline-first`
- indexed local search: `flutter-local-search-fts`
- local-first sync: `flutter-supabase-sync`
- secure local data: `flutter-secure-local-data`
- export / backup flows: `flutter-export-backup`
- iOS/macOS native boundary work: `flutter-apple-native-loop`
- design system and theme work: `flutter-ux-ui-design-system`
- reusable component API design: `flutter-component-contracts`
- UX/UI presentation review: `flutter-design-review`
- accessibility review: `flutter-accessibility-audit`
- refactor safety pass: `flutter-refactor-safely`
- review before merge: `flutter-pr-reviewer`
- repo rules and boundary alignment: `flutter-repo-conventions`

Use supporting skills when they fit the task:
- `flutter-new-project-bootstrap`
- `flutter-simple-clean-architecture-guard`
- `flutter-state-management-pattern`
- `flutter-ui-screen-implementation`
- `flutter-testing-checklist`
- `flutter-review-architecture`
- `flutter-review-localization`
- `flutter-review-testing`
- `flutter-review-platform-config`

Use `flutter-event-loop-audit` for runtime async behavior, lifecycle timing, first-paint delays, and UI-isolate hotspots.
Use `flutter-cache-first-rendering` when the main goal is stale-while-revalidate UX, cache-first first render, or preserving optimistic local actions during refresh.
Use the build optimization flow for benchmark-driven build speed or artifact-size work.
Use `flutter-apple-native-loop` when the task affects `ios/` or `macos/` and needs CLI-first Apple-native validation.

### Capability packs

Use these routing hints when the product needs deeper local-first behavior:
- `prompts/patterns/offline_first_repository.md`
- `prompts/patterns/local_search_fts.md`
- `prompts/patterns/sync_supabase_local_first.md`
- `prompts/patterns/export_backup_architecture.md`
- `prompts/patterns/client_side_encryption.md`
- `docs/repo-integration-playbook.md`
- `skills/flutter-offline-first/SKILL.md`
- `skills/flutter-local-search-fts/SKILL.md`
- `skills/flutter-supabase-sync/SKILL.md`
- `skills/flutter-secure-local-data/SKILL.md`
- `skills/flutter-export-backup/SKILL.md`

---

## Apple-native execution policy for Flutter repos

When the task affects `ios/` or `macos/`, use this execution policy:

1. Classify the change:
   - Flutter-layer
   - native iOS-layer
   - native macOS-layer
   - cross-layer

2. Inspect before editing:
   - existing Flutter plugin usage
   - existing iOS/macOS project settings
   - current schemes and targets
   - existing tests, scripts, and CI hooks

3. Validate with the smallest trustworthy loop:
   - list schemes
   - targeted build
   - targeted test
   - screenshot or log capture when behavior is visual or runtime-specific

4. Escalate to XcodeBuildMCP only when needed:
   - simulator automation
   - screenshots
   - runtime logs
   - UI interaction flows
   - detailed scheme or target inspection beyond basic CLI output

5. Report in every response:
   - boundary classification
   - files changed
   - commands run
   - evidence gathered
   - follow-up checks recommended

Response template for native work:
- Boundary:
- Target platform:
- Scheme:
- Validation commands:
- Evidence:
- Risks or unverified areas:

---

## UX/UI operating mode

When the task is primarily about Flutter UI, widgets, screens, design systems, or review:

Act like a senior Flutter UX/UI engineer.
Optimize for:
- clarity
- consistency
- accessibility
- composability
- token-driven styling
- maintainable presentation-layer boundaries

For major reusable components, usually provide:
1. purpose
2. public API or contract
3. supported states
4. accessibility notes
5. Flutter implementation
6. usage example

When auditing a screen or component, evaluate:
- token usage
- widget responsibility boundaries
- composition quality
- accessibility risks
- state completeness
- consistency with Material 3 and app theme
- maintainability

---

## Build optimization behavior

For build optimization tasks:

1. run or define benchmark scope first
2. produce `.build-benchmark/benchmark-result.json`
3. produce `.build-benchmark/optimization-plan.json`
4. produce `.build-benchmark/optimization-plan.md`
5. stop before edits unless `.build-benchmark/approved-actions.json` exists
6. after fixes, produce `.build-benchmark/fix-report.md`
7. include before/after evidence in the report

Do not skip the approval gate for build-file changes.
