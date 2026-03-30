# AGENTS.md

This file defines the repo-wide operating rules for coding agents using this toolkit.

It is intentionally limited to **durable rules and constraints**.

Task-specific instructions belong in:
- `prompts/`
- `antigravity/workflows/`
- `skills/`

---

## 1. Repository purpose

This repository is a reusable toolkit for building and maintaining mobile apps, primarily with Flutter.

It is not a finished application template by itself.
It provides:
- rules,
- prompts,
- workflows,
- skills,
- templates,
- integration notes.

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
- iOS/macOS native boundary work: `flutter-apple-native-loop`
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
Use the build optimization stack for compile-time, packaging, and toolchain performance issues.

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
