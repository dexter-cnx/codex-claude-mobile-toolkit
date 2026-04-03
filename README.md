# codex-claude-mobile-toolkit

A reusable mobile app toolkit for **Codex**, **Claude Code**, **Grok Code**, **Antigravity**, and **OpenClaw** workflows, centered on Flutter-first project delivery.

This repository is designed to be used as a shared toolkit layer that can be:
- copied into a project,
- added as a submodule,
- or referenced as a conventions/skills repo by coding agents.

It provides:
- repo-wide rules and conventions,
- shared core rules and agent routing docs,
- shared rule fragments in `core/` and `agents/shared/`,
- reusable prompts and workflows,
- focused implementation skills,
- Flutter/Dart MCP setup notes,
- templates for implementation, verification, and copyable entrypoint files.

Fast navigation:
- use `AGENTS.md` for durable rules,
- use `docs/skill-workflow-map.md` for quick task routing,
- use `docs/adoption-playbook.md` for staged toolkit adoption,
- use `docs/runtime-matrix.md` for runtime and surface selection,
- use `docs/ai-context-management.md` for context-efficient agent sessions,
- use `docs/repo_discipline/INDEX.md` for repo discipline and release checks,
- use `core/routing/flutter-skill-routing.md` for the supplemental Flutter skill pack,
- use `docs/ux-ui/mobile-design-direction-lane.md` for design-direction planning before screen implementation,
- use `docs/ux-ui/nothing-inspired-design-lane.md` for a monochrome industrial-style Flutter UI overlay,
- use `docs/ux-ui/gradient-system-lane.md` for token-driven gradient usage and review,
- use `docs/patterns/README.md` for AI UX patterns such as explainability and command-palette behavior,
- use `docs/tooling-ecosystem.md` for operator-stack and toolbox-style integration planning,
- use `docs/stitch-handoff-playbook.md` when design work starts outside the repo,
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

## Pipeline orchestration model

This repository works best when end-to-end work is treated as a layered system:

1. **Rules layer** - durable constraints from `AGENTS.md` and agent-specific files.
2. **Pipeline layer** - end-to-end execution lanes from `prompts/` or `antigravity/workflows/`.
3. **Skill layer** - narrow reusable procedures in `skills/`.
4. **Artifact layer** - standardized reports and summaries in `templates/`.
5. **Memory layer** - durable project context in `project_memory/` and supporting docs.

### Main pipeline entrypoints

- `prompts/finalize_mobile_change.md`
- `prompts/audit_mobile_repo.md`
- `prompts/investigate_flutter_bug.md`
- `prompts/review_mobile_change.md`
- `prompts/self_improve_toolkit.md`
- `prompts/new_realtime_feature.md`
- `prompts/plan_feature.md`
- `prompts/verification_pass.md`
- `prompts/update_project_memory.md`
- `prompts/coherence_pass.md`
- `prompts/architecture_review.md`

Use pipelines when you need:
- a review-ready final pass,
- a repo health audit,
- root-cause investigation,
- a structured change review,
- toolkit self-improvement capture,
- a realtime feature delivery lane,
- a GraphQL catalog delivery lane.

## Agent surfaces supported

### Codex / Codex-style agents
Use:
- `AGENTS.md`
- `agents/shared/`
- `prompts/`
- `skills/`
- `templates/`

### Claude Code
Use:
- `CLAUDE.md`
- `AGENTS.md`
- `agents/shared/`
- `prompts/`
- `skills/`

### Grok Code
Use:
- `GROK.md`
- `AGENTS.md`
- `agents/shared/`
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
- `agents/shared/`
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
|- AGENTS.md
|- CLAUDE.md
|- GROK.md
|- ANTIGRAVITY.md
|- CODEX.md
|- OPENCLAW.md
|- README.md
|- agents/
|  |- shared/
|  |- claude/
|  `- antigravity/
|- core/
|  |- rules/
|  |- routing/
|  `- checklists/
|- antigravity/
|  |- README.md
|  |- rules/
|  |- workflows/
|  |- task-templates/
|  `- artifacts/
|- docs/
|- prompts/
|  |- patterns/
|  `- ...
|- skills/
|- mcp/
|- templates/
|  |- architecture/
|  |- examples/
|  `- ...
|- tokens/
|- scripts/
|- schemas/
`- examples/
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
- `docs/workflow-pipelines.md`
- `docs/pipeline-vs-skill.md`
- `docs/feature-registry.md`
- `docs/runtime-matrix.md`
- `docs/ai-context-management.md`
- `docs/ai-working-rules.md`
- `docs/checklists/ai-session-checklist.md`
- `docs/project-memory-system.md`
- `docs/verification-workflow.md`
- `docs/automation-patterns.md`
- `docs/repo_discipline/INDEX.md`
- `docs/system-design-notes-pack-integration.md`
- `docs/adoption-playbook.md`
- `docs/submodule-installation.md`
- `docs/agent-surface-contract.md`
- `docs/stitch-handoff-playbook.md`
- `docs/self-improvement-routing.md`
- `docs/verification-artifacts.md`
- `docs/release-checklist.md`
- `docs/repo-integration-playbook.md`
- `docs/markdown-workspace-adoption.md`
- `docs/skill-authoring-guide.md`
- `docs/multi-surface-architecture.md`
- `docs/realtime-state-patterns.md`
- `docs/source-adapter-guidelines.md`
- `docs/tv-ui-guidelines.md`
- `docs/rest-catalog-pattern.md`
- `docs/graphql-flutter-pattern.md`
- `docs/graphql-schema-codegen-playbook.md`
- `docs/pokedex-graphql-lane.md`
- `docs/ux-ui/mobile-design-system-lane.md`
- `docs/ux-ui/mobile-design-direction-lane.md`
- `docs/ux-ui/nothing-inspired-design-lane.md`
- `docs/ux-ui/gradient-system-lane.md`
- `docs/ux-ui/gradient-performance-and-accessibility.md`
- `docs/patterns/README.md`
- `docs/toolbox-integration-assessment.md`
- `docs/tooling-ecosystem.md`
- `docs/operator-stack.md`
- `docs/obsidian-pkm-playbook.md`
- `docs/multi-agent-control-plane.md`
- `docs/self-hosted-companions.md`
- `docs/legal/source-attribution-nothing-skill.md`
- `docs/research/anthropic-skills-assessment.md`
- `docs/integrations/anthropic-skills-adoption-plan.md`

### Quick Task Routing

If you want the shortest path through this repo, start with [docs/skill-workflow-map.md](docs/skill-workflow-map.md).

### Governance and memory assets

Use these repo assets when the work needs stronger planning discipline, explicit verification, or durable project memory:
- `prompts/plan_feature.md`
- `prompts/verification_pass.md`
- `prompts/update_project_memory.md`
- `prompts/coherence_pass.md`
- `prompts/architecture_review.md`
- `docs/feature-registry.md`
- `docs/runtime-matrix.md`
- `docs/project-memory-system.md`
- `docs/verification-workflow.md`
- `docs/automation-patterns.md`
- `project_memory/`
- `templates/project-memory-update-report.md`
- `templates/feature-registry-entry.template.md`
- `schemas/feature-status.schema.yaml`

### Repo discipline and release assets

Use these repo assets when the work needs stronger validation, accessibility review, error-handling review, module discipline, or release-readiness gates:
- `docs/repo_discipline/INDEX.md`
- `docs/repo_discipline/module-first-architecture.md`
- `docs/repo_discipline/validation-standard.md`
- `docs/repo_discipline/accessibility-standard.md`
- `docs/repo_discipline/error-handling-standard.md`
- `docs/repo_discipline/release-readiness-standard.md`
- `prompts/validate_repo_release.md`
- `prompts/accessibility_pass.md`
- `prompts/error_handling_pass.md`
- `prompts/module_scaffold_pass.md`
- `skills/repo/release_readiness/`
- `templates/checklists/release-readiness.md`
- `templates/checklists/accessibility-review.md`
- `templates/checklists/error-handling-review.md`
- `scripts/validate_toolkit.ps1`
- `scripts/validate_toolkit.sh`
- `.github/workflows/toolkit-validate.yml`

### AI context assets

Use these repo assets when the main problem is keeping agent sessions focused, bounded, and context-efficient:
- `docs/ai-context-management.md`
- `docs/ai-working-rules.md`
- `docs/checklists/ai-session-checklist.md`
- `prompts/context_guard.md`
- `prompts/focused_debug.md`
- `prompts/bounded_refactor.md`
- `prompts/low_context_handoff.md`
- `CLAUDE.md`

### Adoption and handoff assets

Use these repo assets when onboarding a project, choosing how to consume the toolkit, or converting design exploration into implementation-ready context:
- `docs/adoption-playbook.md`
- `docs/submodule-installation.md`
- `docs/agent-surface-contract.md`
- `docs/stitch-handoff-playbook.md`
- `prompts/new_project_blueprint.md`
- `prompts/stitch_handoff.md`
- `templates/pr-summary.template.md`
- `templates/verification-report.template.md`
- `CHANGELOG.md`

### Supplemental Flutter skill-pack assets

Use these repo assets when you want additional Flutter task-scoped skills and a second routing layer focused on app-building primitives:
- `core/routing/flutter-skill-routing.md`
- `prompts/plan_flutter_feature_with_skill_router.md`
- `prompts/self_improve_flutter_skill_pack.md`
- `docs/flutter-skills-pack/adoption-roadmap.md`
- `docs/flutter-skills-pack/maintenance-guide.md`
- `skills/README.flutter-skills-pack.md`
- `skills/flutter-architecting-apps/`
- `skills/flutter-building-layouts/`
- `skills/flutter-managing-state-getx/`
- `skills/flutter-managing-state-riverpod/`
- `skills/flutter-implementing-navigation-and-routing/`
- `skills/flutter-handling-http-and-json/`
- `skills/flutter-caching-data-offline-first/`
- `skills/flutter-working-with-databases/`
- `skills/flutter-building-forms/`
- `skills/flutter-theming-material3-tokens/`
- `skills/flutter-localizing-apps-csv-json/`
- `skills/flutter-testing-apps-baseline/`
- `skills/flutter-accessibility/`
- `skills/flutter-reducing-app-size/`
- `skills/flutter-handling-concurrency/`
- `skills/flutter-animating-apps/`
- `skills/flutter-native-interop/`

### Anthropic-inspired skill overlay assets

Use these repo assets when you want stronger design-direction planning, black-box Flutter web smoke verification, MCP server design planning, or a cleaner internal skill-authoring loop:
- `docs/research/anthropic-skills-assessment.md`
- `docs/integrations/anthropic-skills-adoption-plan.md`
- `docs/ux-ui/mobile-design-direction-lane.md`
- `prompts/design/mobile_ui_art_direction.md`
- `prompts/testing/flutter_web_playwright_smoke.md`
- `skills/flutter-art-direction/`
- `skills/flutter-web-smoke-testing/`
- `skills/mcp-server-design/`
- `skills/toolkit-skill-author/`
- `templates/ux/mobile_theme_brief.template.md`
- `templates/verification/web_smoke_report.template.md`
- `ATTRIBUTION.md`

### Nothing-inspired design overlay assets

Use these repo assets when you want a monochrome, typography-led, hardware-adjacent UI direction without making it the default style for the whole toolkit:
- `docs/ux-ui/nothing-inspired-design-lane.md`
- `docs/legal/source-attribution-nothing-skill.md`
- `prompts/generate_nothing_tokens.md`
- `prompts/implement_nothing_screen.md`
- `prompts/review_nothing_flutter_ui.md`
- `skills/flutter-nothing-style/`
- `templates/nothing-component-spec.md`
- `examples/flutter_nothing_theme_extensions.dart`
- `tokens/nothing/nothing_light.tokens.json`
- `tokens/nothing/nothing_dark.tokens.json`

### Gradient system assets

Use these repo assets when you want gradients to behave like semantic design-system surfaces instead of ad hoc decoration:
- `docs/ux-ui/gradient-system-lane.md`
- `docs/ux-ui/gradient-performance-and-accessibility.md`
- `core/checklists/gradient-quality-checklist.md`
- `prompts/improve_gradient_ui.md`
- `prompts/patterns/gradient_surface_pattern.md`
- `skills/flutter-gradient-system/`
- `templates/design-handoff-gradient.template.md`
- `templates/examples/flutter-gradient-token-example.md`
- `tokens/gradient-tokens.example.json`

### AI UX pattern assets

Use these repo assets when the product needs stronger explainability, workflow traceability, command-palette behavior, historical trails, or programmable note patterns:
- `agents/shared/patterns-ai-ux.md`
- `docs/patterns/README.md`
- `docs/patterns/epistemic-disclosure.md`
- `docs/patterns/algorithmic-transparency.md`
- `docs/patterns/historical-trails.md`
- `docs/patterns/command-palette.md`
- `docs/patterns/programmable-notes.md`
- `docs/patterns/pattern-evaluation-matrix.md`
- `prompts/design_ai_feature_with_patterns.md`
- `skills/ai-ux-patterns/`
- `templates/ai-feature-pattern-review.md`

### Toolbox and operator-stack assets

Use these repo assets when the work benefits from better operator ergonomics, Obsidian-linked project memory, optional self-hosted helpers, or multi-agent control-plane planning:
- `docs/toolbox-integration-assessment.md`
- `docs/tooling-ecosystem.md`
- `docs/operator-stack.md`
- `docs/obsidian-pkm-playbook.md`
- `docs/multi-agent-control-plane.md`
- `docs/self-hosted-companions.md`
- `project_memory/tooling-stack.md`
- `prompts/plan_operator_stack.md`
- `prompts/capture_operator_stack.md`
- `skills/agent-operator-stack/`
- `skills/obsidian-agent-memory-ops/`
- `templates/tooling-stack/operator-stack-profile.template.md`
- `templates/tooling-stack/session-topology.template.md`

### AI rules assets

Use these repo assets when you want reusable, installable rule packs and tool-specific adapters rather than editing only the root repo rule files:
- `ai_rules/README.md`
- `ai_rules/flutter_master_rules.md`
- `ai_rules/flutter_rules_10k.md`
- `ai_rules/flutter_rules_4k.md`
- `ai_rules/flutter_rules_1k.md`
- `ai_rules/adapters/`
- `ai_rules/profiles/`
- `ai_rules/packs/`
- `ai_rules/prompts/`
- `ai_rules/checklists/rules_verification_checklist.md`
- `scripts/install_ai_rules.ps1`
- `scripts/install_ai_rules.sh`

### System design note-pack assets

Use these repo assets when you want Thai system design study notes and architecture review prompts inside the same Obsidian workspace:
- `docs/system-design-notes-pack-integration.md`
- `prompts/system_design_review_th.md`
- `skills/system-design-notes/README.md`
- `obsidian/system-design-notes-th/`

### Content-source and filter-schema assets

Use these repo assets when a product needs browse/latest/search/detail flows across one or more content providers with pagination, filters, and restore-safe identifiers:
- `docs/mangayomi-toolkit-integration-notes.md`
- `docs/patterns/source-adapter-pattern.md`
- `docs/patterns/filter-schema-pattern.md`
- `docs/patterns/backup-restore-rehydration.md`
- `docs/patterns/cross-platform-capability-matrix.md`
- `prompts/new_content_source_feature.md`
- `prompts/patterns/content_source_adapter.md`
- `skills/flutter-content-source-adapter/`
- `skills/flutter-offline-content-feature/`
- `schemas/filter_schema.schema.json`
- `schemas/filter_schema.example.json`
- `templates/architecture/content_source_feature_template.md`
- `templates/architecture/filter_schema_template.md`
- `templates/examples/content_source_adapter.dart`
- `templates/examples/filter_driven_search_use_case.dart`

### Recommended skills by workflow

These overlay skills complement the existing repo skills.
They do not replace more specialized build-analysis, platform-analysis, game, or integration skills already present in this toolkit.

Pipeline skills:
- `flutter-finalize-change`
- `flutter-audit-repo`
- `flutter-review-change`
- `flutter-self-improve`
- `flutter-commit-readiness`

First-class workflow skills:
- use `flutter-project-bootstrap` when starting from a blank folder or refreshing a starter layout,
- use `flutter-feature-scaffold` for a new feature or module,
- use `flutter-realtime-feature-pattern` for stream-driven or append-style features,
- use `flutter-source-adapter-pattern` for multiple upstream providers behind one feature,
- use `flutter-shared-core-multi-surface` when more than one real app shell shares core behavior,
- use `flutter-tv-ui-pattern` for Android TV or any remote-driven focus-based surface,
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
- `prompts/new_screen.md`
- `prompts/improve_existing_ui.md`
- `prompts/generate_design_tokens.md`
- `prompts/review_flutter_ui.md`
- `core/rules/flutter-defaults.md`
- `core/rules/verification-first.md`
- `core/routing/ui-ux-lane.md`
- `core/checklists/ui-screen-quality.md`
- `docs/ux-ui/mobile-design-system-lane.md`
- `docs/ux-ui/`
- `templates/ux-audit-report.md`
- `templates/component-spec.md`
- `templates/design-handoff.md`
- `tokens/`

### REST catalog lane assets

Use these repo assets for read-mostly public REST catalog apps:
- `skills/flutter-rest-catalog-feature/`
- `prompts/new_catalog_project.md`
- `prompts/new_catalog_feature.md`
- `docs/rest-catalog-pattern.md`
- `templates/rest-catalog-audit.md`
- `antigravity/workflows/07-rest-catalog-feature.md`
- `antigravity/task-templates/catalog-feature-task.md`
- `antigravity/artifacts/rest-catalog-feature-report.md`

### GraphQL catalog lane assets

Use these repo assets for read-mostly GraphQL catalog apps:
- `skills/flutter-graphql-feature/`
- `skills/flutter-graphql-schema-codegen/`
- `skills/flutter-graphql-cache-strategy/`
- `prompts/new_graphql_feature.md`
- `prompts/add_graphql_endpoint.md`
- `prompts/graphql_cache_refactor.md`
- `prompts/patterns/graphql_repository_pattern.md`
- `docs/graphql-flutter-pattern.md`
- `docs/graphql-schema-codegen-playbook.md`
- `docs/pokedex-graphql-lane.md`
- `templates/graphql-feature-audit.md`
- `templates/architecture/graphql_feature_template.md`
- `antigravity/workflows/08-graphql-catalog-feature.md`
- `antigravity/task-templates/graphql-catalog-feature-task.md`
- `antigravity/artifacts/graphql-catalog-feature-report.md`

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

### Realtime, source adapter, shared-core, and TV assets

Use these repo assets when the product needs live updates, multiple upstream sources, shared behavior across surfaces, or remote-driven UI:
- `skills/flutter-realtime-feature-pattern/`
- `skills/flutter-source-adapter-pattern/`
- `skills/flutter-shared-core-multi-surface/`
- `skills/flutter-tv-ui-pattern/`
- `prompts/new_realtime_feature.md`
- `docs/multi-surface-architecture.md`
- `docs/realtime-state-patterns.md`
- `docs/source-adapter-guidelines.md`
- `docs/tv-ui-guidelines.md`
- `antigravity/workflows/realtime-feature-delivery.md`

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
