# AGENTS.md

This file defines the repo-wide operating rules for coding agents using this toolkit.

It is intentionally limited to **durable rules and constraints**.

Task-specific instructions belong in:
- `prompts/`
- `antigravity/workflows/`
- `skills/`
- `templates/`

---

## 1. Repository purpose

This repository is a reusable toolkit for building and maintaining mobile apps, primarily with Flutter.

It is not a finished application template by itself.
It provides:
- rules,
- shared core rules and agent routing hints,
- shared rule fragments under `core/` and `agents/shared/`,
- prompts,
- workflows,
- skills,
- templates,
- integration notes.

### Shared rule composition

When the same policy needs to be reused across surfaces, prefer shared files under `core/` and `agents/shared/` rather than copying the same guidance into every root agent file.

---

## 2. Default Flutter stack

Unless the project explicitly overrides it, assume the default stack is:
- Flutter
- Riverpod
- go_router
- Material 3
- easy_localization
- CSV-first localization workflow
- Isar for local-first persistence where appropriate
- Dio for HTTP/networking

Do not replace core stack choices unless the project prompt or repo context explicitly asks for it.

---

## 3. Architecture rules

Use a clean, pragmatic architecture.

Expected separation:
- `presentation/` for UI composition and state wiring
- `domain/` for entities, use cases, contracts
- `data/` for DTOs, repositories, adapters, persistence, transport

Rules:
- Do not put API calls in widgets.
- Do not parse JSON in widgets.
- Do not place business logic directly in page widgets.
- Prefer small reusable widgets over large monolithic screens.
- Keep app-level composition separate from feature-level business logic.

Avoid over-engineering.
Use only the amount of layering justified by the feature complexity.

---

## 4. UI and design system rules

Default UI assumptions:
- Material 3
- token-oriented spacing, radii, colors, and typography
- reusable components preferred over one-off widget duplication

Rules:
- Pages should focus on layout and composition.
- Shared UI states must be explicit: loading, empty, error, success.
- Avoid tightly coupling feature logic to visual widgets.
- Prefer maintainable structures over clever abstractions.

### UX/UI rules

When the task involves Flutter UI, screens, design systems, widgets, or UX review:
- Prefer token-driven styling over hardcoded colors, spacing, radius, and typography.
- Reusable widgets must not contain business logic.
- Page widgets should mostly compose sections and bind state.
- Prefer semantic tokens before raw primitive values.
- Every important interactive component should have an explicit state matrix.
- Consider accessibility required, not optional.
- Icon-only actions need semantic labels or tooltips.
- Support large text, visible focus, and adequate tap target size.
- Do not rely on color alone for critical state communication.
- Prefer consistent shared components for repeated patterns such as buttons, inputs, cards, empty states, and banners.

---

## 5. Localization rules

Localization is CSV-first unless the project says otherwise.

Preferred source of truth:
- `assets/i18n/translations.csv`

Generated outputs may include:
- `assets/i18n/en.json`
- `assets/i18n/th.json`
- `assets/i18n/ja.json`

Rules:
- Do not hardcode user-facing text in feature code when localization is already enabled.
- Preserve dotted-key structure consistency.
- Do not manually edit generated locale JSON when the CSV is the declared source of truth.

---

## 6. State management and navigation rules

Default expectations:
- Riverpod for state management
- go_router for routing

Rules:
- Keep state close to the feature boundary.
- Do not use global mutable state unless clearly justified.
- Keep routing definitions readable and organized by app/domain structure.
- Avoid routing logic inside leaf widgets.

### Runtime responsiveness rules

- Prefer showing shell UI or cached/local data before waiting on non-critical remote work.
- Avoid async side effects in `build()`.
- Use `Future.microtask` only when strict ordering is required.
- Prefer event-queue deferral for non-critical follow-up work.
- Do not use post-frame callbacks as a generic timing patch.
- Parallelize independent async work when safe.
- Avoid heavy synchronous transforms on the UI isolate during render-sensitive paths.
- Recommend isolates only for clearly CPU-heavy work.
- When reviewing code, prioritize first meaningful paint, duplicate fetch prevention, and rebuild stability.

### Cache-first rendering rules

- Prefer rendering usable cached or local state before waiting on remote data when the feature benefits from revisit speed and continuity.
- Keep cache orchestration out of widgets.
- Preserve visible content during background refresh failures when cached state is already usable.
- Do not blindly overwrite visible state with fresh remote payloads when optimistic local actions may still be pending.
- Introduce staged state only where overlapping cache, refresh, and local mutations make it necessary.
- Prefer incremental retrofit of one feature at a time over broad cache-architecture rewrites.

### REST catalog apps

When a feature is a read-mostly REST catalog or public API browser:

- prefer cache-first list and detail rendering,
- keep related resources lazy unless eager loading is clearly justified,
- keep favorites and recently viewed items local when relevant,
- use `prompts/new_catalog_project.md` or `prompts/new_catalog_feature.md`,
- use `skills/flutter-rest-catalog-feature/`,
- use `docs/rest-catalog-pattern.md`,
- use `templates/rest-catalog-audit.md`,
- use `antigravity/workflows/07-rest-catalog-feature.md` when working through Antigravity.

This pattern is a good fit for browse/detail experiences with modest write complexity and high tolerance for stale-but-useful content.

### Shared-core and multi-surface rules

When a product has more than one delivery surface, such as mobile + TV, mobile + desktop, or app + console/dev shell:

- Prefer a shared domain/data core before duplicating business logic across apps.
- Keep surface-specific routing, navigation, focus handling, and shell composition out of the shared core.
- Keep provider-specific transport details behind source or repository boundaries.
- Treat multi-surface support as a deliberate architecture choice, not an incidental folder split.
- If a project only has one delivery surface, do not introduce multi-surface structure speculatively.

Use `skills/flutter-shared-core-multi-surface/` when the architecture must support more than one real surface.

### Source adapter rules

When a feature integrates more than one upstream provider:

- Define a shared domain contract first.
- Normalize provider differences inside the data layer.
- Keep raw provider models and quirks out of UI and domain layers.
- Expose feature capability differences explicitly rather than hiding them through fragile assumptions.
- Prefer capability matrices and feature flags over silent partial support.

Use `skills/flutter-source-adapter-pattern/` when the task involves multiple providers or upstreams.

### Realtime feature rules

When a feature receives live or streaming updates:

- Keep connection lifecycle management out of widgets.
- Distinguish initial snapshot loading from live stream maintenance.
- Represent reconnecting, degraded, stale, and disconnected states explicitly.
- Deduplicate live events before mutating visible collections when upstream duplication is possible.
- Prevent unbounded list growth in long-lived sessions.
- Avoid auto-scroll behavior that overrides user intent.
- Model background/foreground resume behavior deliberately.
- Treat live transport errors separately from domain validation errors.

Use `skills/flutter-realtime-feature-pattern/` when the main feature is stream-driven or event-driven.

### TV and non-touch UI rules

When the feature targets Android TV, desktop keyboard navigation, kiosk, or any remote-driven UI:

- Design focus traversal intentionally.
- Never assume touch-first interaction.
- Maintain visible focus at all times.
- Restore focus predictably after route changes, drawers, dialogs, and overlays.
- Prefer larger targets and clearer grouping than phone-first layouts.
- Validate D-pad traversal across primary flows.
- Avoid hidden actions that only become discoverable through gesture habits.

Use `skills/flutter-tv-ui-pattern/` when the task explicitly involves TV or remote-driven UI.

### UI/UX lane routing

When the task involves a screen redesign, design-token work, or a structured UI review:

- use `prompts/new_screen.md`
- use `prompts/improve_existing_ui.md`
- use `prompts/generate_design_tokens.md`
- use `prompts/review_flutter_ui.md`
- use `core/routing/ui-ux-lane.md`
- use `core/checklists/ui-screen-quality.md`
- use `docs/ux-ui/mobile-design-system-lane.md`
- use `tokens/README.md`

Keep these assets focused on screen quality, component contracts, and design-system alignment rather than general feature delivery.

### Offline-first, search, sync, and secure data patterns

Use these patterns when the product needs stronger local-first behavior:

- offline-first repositories
- local indexed search
- optional cloud sync
- export / backup flows
- secure local data

Rules:
- Keep local persistence behind a repository boundary.
- Keep sync state separate from domain state.
- Expose searchable state and sync failures explicitly.
- Treat encryption and backup semantics as first-class design decisions.
- Keep these capabilities optional unless the product clearly needs them.

### Apple-native lane for Flutter projects

When a task touches `ios/` or `macos/`, switch to an Apple-native validation loop.

Goals:
- Keep the project Flutter-first.
- Treat native Apple work as a focused sub-workflow, not a separate architecture.
- Prefer terminal-verifiable steps before introducing heavier automation.

Rules:
- Stay CLI-first.
- Prefer `xcodebuild` for listing schemes, building, and testing.
- Start with the smallest trustworthy validation command for the changed surface.
- Reuse existing Flutter app structure, plugin wiring, and shared utilities before introducing new native abstractions.
- If deeper simulator control, screenshots, logs, or UI automation are needed, use XcodeBuildMCP when available.

Always report:
- whether the task was Flutter-layer or native-layer
- the exact scheme used
- simulator or macOS target used
- commands run
- what was verified
- what remains unverified

---

## 7. Dependency rules

Before adding a dependency:
- confirm it solves a real problem,
- prefer established packages,
- avoid overlapping libraries that duplicate responsibilities,
- avoid introducing generators or runtime systems without clear payoff.

When changing dependency strategy, explain:
- what changes,
- why it changes,
- migration impact,
- risks.

---

## 8. Verification baseline

Every non-trivial change must end with a verification summary.

Minimum baseline unless impossible in the environment:
- `flutter pub get`
- `dart format .`
- `flutter analyze`
- `flutter test`

If UI is changed, also attempt:
- targeted smoke verification,
- route/screen startup validation,
- screenshot or equivalent visual summary when possible.

If something cannot be verified, state it explicitly.
Do not imply verification that did not happen.

---

## 9. Output contract for agent tasks

For implementation tasks, return:
1. what changed,
2. files created or modified,
3. assumptions,
4. verification performed,
5. unresolved risks or follow-ups.

When the deliverable is a note, summary, or decision log, prefer concise repo-friendly markdown that is easy to paste into Obsidian or a similar notes app.

Do not claim completion without these items.

---

## 10. Skill usage rules

Use `skills/` for focused implementation tasks.

Each skill should:
- solve one narrow job,
- define when to use it,
- define verification steps,
- describe expected outputs.

If a skill grows too large, split it.
Do not create catch-all mega-skills.

Preferred skills by task type:
- feature work: `flutter-feature-scaffold`
- localization maintenance: `flutter-localization-csv-pipeline`
- API-backed feature integration: `flutter-api-integration-pattern`
- debugging and root-cause analysis: `flutter-bug-investigation`
- runtime responsiveness and async timing review: `flutter-event-loop-audit`
- cache-first retrofit and staged-state work: `flutter-cache-first-rendering`
- offline-first feature delivery: `flutter-offline-first`
- indexed local search: `flutter-local-search-fts`
- Supabase local-first sync: `flutter-supabase-sync`
- secure local data: `flutter-secure-local-data`
- export and backup flows: `flutter-export-backup`
- iOS/macOS native boundary work: `flutter-apple-native-loop`
- realtime feature delivery: `flutter-realtime-feature-pattern`
- source adapter / multi-provider integration: `flutter-source-adapter-pattern`
- shared-core / multi-surface planning: `flutter-shared-core-multi-surface`
- TV / remote-driven UI: `flutter-tv-ui-pattern`
- design system and token mapping: `flutter-ux-ui-design-system`
- reusable widget API definition: `flutter-component-contracts`
- UX/UI quality review: `flutter-design-review`
- focused accessibility review: `flutter-accessibility-audit`
- refactoring without intended behavior changes: `flutter-refactor-safely`
- PR review before merge: `flutter-pr-reviewer`
- repo alignment and conventions checks: `flutter-repo-conventions`

These preferred skills complement existing specialized skills in the repo.
Do not replace dedicated build optimization, analyzer, game, or integration skills when those are the more precise match.
Use `flutter-event-loop-audit` for runtime behavior on the UI isolate and async scheduling.
Use `flutter-cache-first-rendering` when the core problem is remote-first first render, stale-while-revalidate behavior, or pending optimistic action preservation.
Use `flutter-apple-native-loop` when validation must cross into `ios/` or `macos/`.
Use the build optimization stack for compile-time, packaging, and toolchain performance issues.

### Pipeline and self-improvement routing

Use `prompts/` and `antigravity/workflows/` for end-to-end execution lanes.
Use `skills/` for focused reusable procedures.

Preferred pipeline entrypoints:

- `finalize_mobile_change`
- `audit_mobile_repo`
- `investigate_flutter_bug`
- `review_mobile_change`
- `self_improve_toolkit`

Preferred orchestrator skills:

- `flutter-finalize-change`
- `flutter-audit-repo`
- `flutter-review-change`
- `flutter-self-improve`
- `flutter-commit-readiness`
- `flutter-review-architecture`
- `flutter-review-localization`
- `flutter-review-testing`
- `flutter-review-platform-config`

Rules:

- Each pipeline should solve one end-to-end lane.
- Each skill should solve one narrow reusable procedure.
- Each skill must define verification steps and expected outputs.
- If a skill grows too large, split it.
- Do not create catch-all mega-skills.
- Prefer a pipeline only when sequencing or artifact discipline genuinely matters.
- Do not create duplicate prompts and skills that solve the same job with different names.

---

## 11. Antigravity usage rules

When working through Antigravity:
- read `antigravity/README.md` first,
- apply `antigravity/rules/` as the durable rule layer,
- choose a matching workflow from `antigravity/workflows/`,
- emit artifacts using templates from `templates/` or `antigravity/artifacts/`.

Antigravity tasks should be verification-first.
Treat Antigravity as an optional overlay on top of the same repository rules, not as a replacement for the default Codex or Claude Code operating model.
If a task is not explicitly being run through Antigravity, continue using the normal repo entrypoints in `AGENTS.md`, `prompts/`, and `skills/`.

Use Antigravity when:
- the task needs a predefined workflow,
- artifact output must be standardized,
- verification sequencing must be explicit,
- or MCP-assisted execution needs a documented operating path.

---

## 12. What not to do

- Do not collapse all logic into the UI layer.
- Do not introduce architecture patterns without explaining their value.
- Do not hardcode strings if localization is enabled.
- Do not mark work as done without a verification summary.
- Do not silently change core stack assumptions.
- Do not add large dependencies casually.
