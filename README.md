# codex-claude-mobile-toolkit

A reusable mobile app toolkit for **Codex**, **Claude Code**, **Grok Code**, **Antigravity**, and **OpenClaw** workflows, centered on Flutter-first project delivery.

This repository is designed to be used as a shared toolkit layer that can be:
- copied into a project,
- added as a submodule,
- or referenced as a conventions/skills repo by coding agents.

It provides:
- repo-wide rules and conventions,
- shared core rules and agent routing docs,
- reusable prompts and workflows,
- focused implementation skills,
- Flutter/Dart MCP setup notes,
- templates for implementation, verification, and copyable entrypoint files.

Fast navigation:
- use `AGENTS.md` for durable rules,
- use `docs/skill-workflow-map.md` for quick task routing,
- use `README.md` for the high-level repository map.

## Primary usage model

Use this repository as a **toolkit layer**, not as a finished app starter.

Typical flow:
1. Start from a blank project repository.
2. Add this toolkit as a submodule or copy selected files in.
3. Point your coding agent to `AGENTS.md` first.
4. Use `prompts/` or `antigravity/workflows/` as the entrypoint for project tasks.
5. Use `skills/` for focused implementation tasks.
6. Require verification artifacts before considering work complete.

## Agent surfaces supported

### Codex / Codex-style agents
Use:
- `AGENTS.md`
- `prompts/`
- `skills/`
- `templates/`

### Claude Code
Use:
- `CLAUDE.md`
- `AGENTS.md`
- `prompts/`
- `skills/`

### Grok Code
Use:
- `GROK.md`
- `AGENTS.md`
- `prompts/`
- `skills/`

### Antigravity
Use:
- `antigravity/README.md`
- `antigravity/rules/`
- `antigravity/workflows/`
- `antigravity/task-templates/`
- `antigravity/artifacts/`
- `mcp/flutter-dart-mcp-setup.md`

### OpenClaw
Use:
- `OPENCLAW.md`
- `docs/install-openclaw.md`

## When to use Antigravity

Use the Antigravity layer when the task benefits from a stricter workflow shell around implementation work.

Typical cases:
- multi-step feature delivery that should follow an explicit workflow,
- verification-heavy tasks where artifacts must be emitted consistently,
- repeatable execution across different agents or contributors,
- MCP-assisted Flutter/Dart tasks that need a documented setup path.

You do not need Antigravity for every task.
For smaller or direct coding tasks, `AGENTS.md`, `prompts/`, and `skills/` remain sufficient.

## Compatibility notes

Adding the Antigravity layer does not replace the existing Codex, Claude Code, or Grok Code surfaces.

- `Codex` continues to use `AGENTS.md`, `prompts/`, `skills/`, and `templates/`.
- `Claude Code` continues to use `CLAUDE.md` plus the same repo-wide rules from `AGENTS.md`.
- `Grok Code` continues to use `GROK.md` plus the same repo-wide rules from `AGENTS.md`.
- `Antigravity` acts as an optional workflow and artifact layer on top of the same toolkit conventions.
- `OpenClaw` can use `OPENCLAW.md` plus the same repo-wide rules from `AGENTS.md`.

In other words, Antigravity should be treated as additive, not as a breaking change to the default Codex, Claude Code, or Grok Code operating model.

## Repository structure

```text
.
├─ AGENTS.md
├─ CLAUDE.md
├─ GROK.md
├─ ANTIGRAVITY.md
├─ CODEX.md
├─ OPENCLAW.md
├─ README.md
├─ agents/
├─ core/
├─ antigravity/
│  ├─ README.md
│  ├─ rules/
│  ├─ workflows/
│  ├─ task-templates/
│  └─ artifacts/
├─ docs/
├─ prompts/
│  ├─ patterns/
│  └─ ...
├─ skills/
├─ mcp/
├─ templates/
│  ├─ architecture/
│  ├─ examples/
│  └─ ...
├─ scripts/
├─ schemas/
└─ examples/
```

## Recommended operating model

### Rules
Put durable project rules in `AGENTS.md` and `antigravity/rules/`.
Use `core/` when you want the same durable principles broken out into smaller reusable rule files.

Examples:
- architecture boundaries,
- localization policy,
- testing baseline,
- package selection rules,
- code style constraints,
- do/don't guidance.

### Workflows
Put step-by-step task flows in:
- `prompts/`
- `antigravity/workflows/`

Examples:
- bootstrap new project,
- add a feature,
- refactor for coherence,
- fix a bug,
- optimize build configuration.

### Skills
Put narrow, reusable implementation procedures in `skills/`.

Examples:
- bootstrap Flutter project,
- add Riverpod feature,
- import localization CSV,
- export locale JSON,
- run build verification,
- review architecture coherence.

### Docs
Put install notes, migration guidance, and skill authoring references in `docs/`.

Useful docs from the production layout:
- `docs/install-codex.md`
- `docs/install-claude.md`
- `docs/install-antigravity.md`
- `docs/install-openclaw.md`
- `docs/repo-integration-playbook.md`
- `docs/markdown-workspace-adoption.md`
- `docs/skill-authoring-guide.md`

### Quick Task Routing

If you want the shortest path through this repo, start with [docs/skill-workflow-map.md](/Users/dxtr_m4/develop/mobile_projects/codex-claude-mobile-toolkit/codex-claude-mobile-toolkit/docs/skill-workflow-map.md).

### Recommended skills by workflow

These overlay skills complement the existing repo skills.
They do not replace more specialized build-analysis, platform-analysis, game, or integration skills already present in this toolkit.

First-class workflow skills:
- use `flutter-project-bootstrap` when starting from a blank folder or refreshing a starter layout,
- use `flutter-feature-scaffold` for a new feature or module,
- use `flutter-existing-project-audit` for architecture review or refactor planning,
- use `flutter-localization-csv` for CSV-first localization workflows,
- use `flutter-performance-audit` for performance and rebuild review,
- use `flutter-testing` for test planning or coverage gaps,
- use `mobile-ui-refinement` for UI critique or design refinement,
- use `api-integration` for API client and mapping design,
- use `obsidian-doc-writer` for architecture notes, summaries, or decision logs,
- use `flutter-repo-conventions` to align work with this toolkit's default preset and repo boundaries,
- use `flutter-localization-csv-pipeline` when editing `assets/i18n/translations.csv` and regenerating locale outputs,
- use `flutter-api-integration-pattern` when introducing a new HTTP-backed data flow,
- use `flutter-pr-reviewer` before merge for a structured review pass,
- use `flutter-bug-investigation` before attempting a broad bug fix or root-cause hunt.

Supporting skills:
- use `flutter-new-project-bootstrap` for new project setup,
- use `flutter-simple-clean-architecture-guard` to keep feature layering pragmatic,
- use `flutter-state-management-pattern` for Riverpod structure decisions,
- use `flutter-ui-screen-implementation` for screen composition work,
- use `flutter-testing-checklist` before final verification,
- use `flutter-refactor-safely` when reshaping existing code without changing behavior,
- use `flutter-event-loop-audit` when reviewing runtime responsiveness, async timing, startup smoothness, and UI-isolate hotspots,
- use `flutter-ux-ui-design-system`, `flutter-component-contracts`, `flutter-design-review`, and `flutter-accessibility-audit` for design-system, UX review, and accessibility work,
- use `flutter-apple-native-loop` when work crosses into `ios/` or `macos/` and needs a narrow Apple-native validation loop,
- use `flutter-cache-first-rendering` when retrofitting existing features to render cached data first and refresh safely in the background.

### Capability packs

Use these when the product needs a deeper local-first or content-heavy workflow:
- `flutter-offline-first` for features that must remain useful offline
- `flutter-local-search-fts` for indexed local search
- `flutter-supabase-sync` for optional local-first cloud sync
- `flutter-secure-local-data` for protected local storage
- `flutter-export-backup` for export, restore, or backup flows

Related artifacts:
- `prompts/patterns/offline_first_repository.md`
- `prompts/patterns/local_search_fts.md`
- `prompts/patterns/sync_supabase_local_first.md`
- `prompts/patterns/export_backup_architecture.md`
- `prompts/patterns/client_side_encryption.md`
- `templates/architecture/offline_first_feature_template.md`
- `templates/architecture/search_enabled_feature_template.md`
- `templates/architecture/sync_enabled_feature_template.md`
- `templates/examples/markdown_workspace_reference.md`
- `docs/repo-integration-playbook.md`

### Skill selection notes

Use these pairs to reduce overlap when multiple skills seem close:
- prefer `flutter-new-project-bootstrap` for repo overlays and starter setup; prefer `flutter-project-scaffold-riverpod-go-router` when scaffolding or refreshing a target Flutter app structure directly,
- prefer `flutter-localization-csv-pipeline` for day-to-day translation key and generation workflow; prefer `flutter-localization-csv` when defining or auditing the CSV-first localization contract itself,
- prefer `flutter-pr-reviewer` for merge-oriented change review; prefer `flutter-review` for broader architecture drift review against the toolkit defaults,
- prefer `flutter-event-loop-audit` for runtime responsiveness and async scheduling review; prefer `flutter-build-orchestrator` and related analyzers for compile/build-time optimization work,
- prefer `flutter-cache-first-rendering` for stale-while-revalidate UX, staged state, and non-destructive refresh behavior; prefer `flutter-event-loop-audit` when the main question is scheduling, jank, or UI-isolate timing,
- prefer `flutter-design-review` for UX/UI consistency and presentation quality; prefer `flutter-pr-reviewer` for broader implementation review before merge,
- prefer `flutter-accessibility-audit` for focused a11y review; prefer `flutter-design-review` when accessibility is only one part of a larger UI quality pass,
- prefer `flutter-apple-native-loop` for iOS/macOS native boundary work; prefer the normal Flutter feature flow when the change stays inside Dart and shared app layers,
- prefer the new overlay skills for Riverpod-centered feature delivery; prefer existing specialized skills for build optimization, analyzer-driven audits, game workflows, and shared-repo integration patches.

### Event loop audit assets

Use these repo assets for runtime responsiveness work:
- `skills/flutter-event-loop-audit/`
- `prompts/review_event_loop_async.md`
- `prompts/fix_event_loop_hotspots.md`
- `docs/flutter-event-loop-performance.md`
- `templates/event-loop-audit-report.md`
- `schemas/event_loop_audit.schema.json`

### UX/UI overlay assets

Use these repo assets for Flutter UX/UI work:
- `skills/flutter-ux-ui-design-system/`
- `skills/flutter-component-contracts/`
- `skills/flutter-design-review/`
- `skills/flutter-accessibility-audit/`
- `docs/ux-ui/`
- `templates/ux-audit-report.md`
- `templates/component-spec.md`
- `templates/design-handoff.md`
- `tokens/`

### Apple-native lane assets

Use these repo assets for iOS/macOS native-boundary work:
- `skills/flutter-apple-native-loop/`
- `prompts/native_ios_macos_flutter_bridge.md`
- `prompts/fix_ios_macos_native_issue.md`
- `docs/apple-native-lane-for-flutter.md`
- `docs/xcodebuildmcp-when-to-use.md`
- `docs/ios-macos-debug-playbook.md`
- `mcp/xcodebuildmcp/`
- `scripts/ios_list_schemes.sh`
- `scripts/ios_build_sim.sh`
- `scripts/ios_test_without_building.sh`
- `scripts/ios_capture_screenshot.sh`
- `scripts/macos_build.sh`

### Cache-first rendering assets

Use these repo assets for cache-first and staged-state retrofits:
- `skills/flutter-cache-first-rendering/`
- `prompts/cache_first_upgrade_existing_project.md`
- `prompts/cache_first_feature_refactor.md`
- `docs/cache-first-rendering.md`
- `docs/staged-state-pattern.md`
- `templates/cache-first-migration-plan.md`
- `templates/feature-cache-audit.md`

## Verification-first rule

No code task should be considered complete without a verification summary.

Minimum expected verification for most Flutter tasks:
- `flutter pub get`
- `dart format .`
- `flutter analyze`
- `flutter test`

When UI changes are involved, also include:
- target screen smoke check,
- screenshots or equivalent notes,
- known gaps if emulator/device verification was not possible.

## Antigravity quick start

1. Read `antigravity/README.md`.
2. Read `antigravity/rules/global.md` and `antigravity/rules/flutter.md`.
3. Pick a workflow from `antigravity/workflows/`.
4. Use focused skills from `skills/`.
5. Emit artifacts using templates in `templates/`.
6. Configure Flutter/Dart MCP using `mcp/flutter-dart-mcp-setup.md`.

## Notes for toolkit maintainers

When adding new skills:
- keep each skill focused on one job,
- include a `Verification` section,
- define the expected output contract,
- link related skills instead of merging everything into one giant skill.

When adding new prompts/workflows:
- state goal and constraints clearly,
- specify files to inspect first,
- define what must be verified,
- require a concise implementation report.
