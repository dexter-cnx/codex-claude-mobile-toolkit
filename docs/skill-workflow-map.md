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
- Content source / browse-search-detail feature: `prompts/new_content_source_feature.md` + `skills/flutter-content-source-adapter/` and `docs/patterns/source-adapter-pattern.md`
- Repo release-readiness and discipline pass: `prompts/validate_repo_release.md`, `prompts/accessibility_pass.md`, `prompts/error_handling_pass.md`, or `prompts/module_scaffold_pass.md`
- Supplemental Flutter skill-router planning: `prompts/plan_flutter_feature_with_skill_router.md` + `core/routing/flutter-skill-routing.md`
- Mobile design-direction planning before implementation: `prompts/design/mobile_ui_art_direction.md` + `skills/flutter-art-direction/` + `docs/ux-ui/mobile-design-direction-lane.md`
- Nothing-inspired screen or token work: `prompts/generate_nothing_tokens.md`, `prompts/implement_nothing_screen.md`, or `prompts/review_nothing_flutter_ui.md` + `skills/flutter-nothing-style/`
- Gradient-heavy visual system work: `prompts/improve_gradient_ui.md` or `prompts/patterns/gradient_surface_pattern.md` + `skills/flutter-gradient-system/`
- AI UX pattern planning: `prompts/design_ai_feature_with_patterns.md` + `skills/ai-ux-patterns/` + `docs/patterns/README.md`
- Operator stack or Obsidian memory workflow planning: `prompts/plan_operator_stack.md` or `prompts/capture_operator_stack.md` + `skills/agent-operator-stack/` or `skills/obsidian-agent-memory-ops/`
- Flutter web smoke verification: `prompts/testing/flutter_web_playwright_smoke.md` + `skills/flutter-web-smoke-testing/`
- MCP server planning or review: `skills/mcp-server-design/`
- Authoring or refining toolkit-native skills: `skills/toolkit-skill-author/`
- Thai system design architecture review: `prompts/system_design_review_th.md` + `obsidian/system-design-notes-th/`
- Feature planning before implementation: `prompts/plan_feature.md`
- New project blueprint: `prompts/new_project_blueprint.md`
- Formal verification pass before sign-off: `prompts/verification_pass.md`
- Focused, low-noise session start: `prompts/context_guard.md`
- Focused debugging with tight context: `prompts/focused_debug.md`
- Bounded refactor with limited scope: `prompts/bounded_refactor.md`
- Compact handoff for low-context continuation: `prompts/low_context_handoff.md`
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
- Use `prompts/new_content_source_feature.md` when the feature needs browse, latest, search, filters, pagination, detail loading, and restore-safe stable IDs across one or more providers.
- Use `flutter-content-source-adapter` when the main implementation problem is normalizing provider-specific browse/search/detail flows behind shared contracts.
- Use `flutter-offline-content-feature` when the feature is content-heavy, local-first, and must remain usable around cache, restore, or offline reading flows.
- Use `prompts/validate_repo_release.md` when the main goal is deciding whether a change is ready for release or wider rollout with explicit validation evidence.
- Use `prompts/accessibility_pass.md` when you want a focused accessibility review separate from a broader UI review.
- Use `prompts/error_handling_pass.md` when the main concern is loading, empty, retry, timeout, offline, and failure-path quality.
- Use `prompts/module_scaffold_pass.md` when the task is about shaping or checking feature-module structure and boundaries.
- Use `prompts/plan_flutter_feature_with_skill_router.md` when you want the supplemental Flutter skills pack to choose a primary and supporting skill set before implementation.
- Use `prompts/design/mobile_ui_art_direction.md` when product notes are too vague for implementation and the missing piece is a buildable visual direction, token stance, and component hierarchy.
- Use `flutter-art-direction` when the core problem is design direction, screen refinement, or turning aesthetic intent into Flutter-ready implementation guidance.
- Use `prompts/generate_nothing_tokens.md` when the missing piece is a Nothing-inspired token layer before component implementation.
- Use `prompts/implement_nothing_screen.md` when the product already chose the Nothing-style lane and the main job is turning that direction into a concrete Flutter screen.
- Use `prompts/review_nothing_flutter_ui.md` when a Nothing-inspired screen exists and the main question is whether it still feels precise, restrained, and accessible.
- Use `flutter-nothing-style` when the core problem is mapping an industrial monochrome direction into reusable Flutter tokens and components.
- Use `prompts/improve_gradient_ui.md` when the interface already has gradients but needs better hierarchy, contrast, performance, or token discipline.
- Use `prompts/patterns/gradient_surface_pattern.md` when the task is defining a reusable gradient role rather than polishing a single screen.
- Use `flutter-gradient-system` when the main job is building or reviewing semantic gradient tokens, surfaces, and Flutter mapping rules.
- Use `prompts/design_ai_feature_with_patterns.md` when the product involves AI, agent assistance, explainability, command-palette behavior, or resumable workflows and needs stronger UX patterns before implementation.
- Use `skills/ai-ux-patterns/` when the main job is selecting and applying concrete AI UX patterns such as epistemic disclosure, algorithmic transparency, historical trails, or programmable notes.
- Use `prompts/plan_operator_stack.md` when the task is choosing or documenting the runtime operator stack for sessions, tools, and assistants before rollout.
- Use `prompts/capture_operator_stack.md` when the stack already exists and the main need is to capture it into reusable repo memory.
- Use `agent-operator-stack` when the main problem is shaping a multi-tool operating model for developers or agents.
- Use `obsidian-agent-memory-ops` when the main problem is promoting personal notes or PKM material into stable repo docs and project memory.
- Use `prompts/testing/flutter_web_playwright_smoke.md` when you want a narrow smoke gate for Flutter web or an adjacent local web surface instead of full E2E automation.
- Use `flutter-web-smoke-testing` when the main job is black-box verification, screenshot evidence, and console-aware smoke coverage.
- Use `mcp-server-design` when the task is deciding tool shape, naming, pagination, and error behavior for an MCP server before coding.
- Use `toolkit-skill-author` when creating or tightening a reusable skill for this toolkit and you need help with trigger boundaries, structure, and evaluation prompts.
- Use `prompts/system_design_review_th.md` when the task needs architecture trade-offs, scaling analysis, or backend/mobile system design framing in Thai before implementation.
- Use `prompts/plan_feature.md` when the task is medium or large enough that implementation should be preceded by an explicit file-touch, architecture, and verification plan.
- Use `prompts/new_project_blueprint.md` when the repo or app structure does not exist yet and the first need is an implementation-ready blueprint.
- Use `prompts/verification_pass.md` when implementation exists and the main question is whether the current result is actually trustworthy and review-ready.
- Use `prompts/context_guard.md` when you want a session to stay highly focused, bounded, and context-efficient from the start.
- Use `prompts/focused_debug.md` when debugging should stay narrow and avoid broad repository exploration.
- Use `prompts/bounded_refactor.md` when the task is a refactor with a strict boundary and low appetite for opportunistic cleanup.
- Use `prompts/low_context_handoff.md` when you need a compact summary for resuming later or switching workstreams cleanly.
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

- Content-provider feature with filters and pagination:
  `prompts/new_content_source_feature.md` + `flutter-content-source-adapter` + `flutter-offline-content-feature`

- Release or readiness pass:
  `prompts/validate_repo_release.md` + `prompts/accessibility_pass.md` + `prompts/error_handling_pass.md` + `skills/repo/release_readiness/`

- Flutter feature planning with the supplemental skill pack:
  `prompts/plan_flutter_feature_with_skill_router.md` + `core/routing/flutter-skill-routing.md` + chosen `skills/flutter-*`

- Design-direction-first UI planning:
  `prompts/design/mobile_ui_art_direction.md` + `flutter-art-direction` + `templates/ux/mobile_theme_brief.template.md`

- Nothing-inspired UI delivery:
  `prompts/generate_nothing_tokens.md` + `flutter-nothing-style` + `prompts/implement_nothing_screen.md`

- Gradient design-system refinement:
  `prompts/patterns/gradient_surface_pattern.md` + `flutter-gradient-system` + `core/checklists/gradient-quality-checklist.md`

- AI-assisted feature with explainability and workflow memory:
  `prompts/design_ai_feature_with_patterns.md` + `skills/ai-ux-patterns/` + `docs/patterns/README.md`

- Operator stack and Obsidian-aware project memory setup:
  `prompts/plan_operator_stack.md` + `prompts/capture_operator_stack.md` + `skills/agent-operator-stack/` + `skills/obsidian-agent-memory-ops/`

- Flutter web smoke pass before merge:
  `prompts/testing/flutter_web_playwright_smoke.md` + `flutter-web-smoke-testing` + `templates/verification/web_smoke_report.template.md`

- MCP server planning:
  `mcp-server-design` + service/API context + verification plan

- Architecture-first backend/mobile design discussion:
  `prompts/system_design_review_th.md` + `obsidian/system-design-notes-th/`

- Review before merge:
  `flutter-pr-reviewer` + `flutter-testing-checklist`

- Medium or large feature delivery with planning and verification:
  `prompts/plan_feature.md` + implementation workflow + `prompts/verification_pass.md` + `prompts/update_project_memory.md`

- Tight-context debugging or continuation:
  `prompts/context_guard.md` + `prompts/focused_debug.md` or `prompts/low_context_handoff.md`

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
