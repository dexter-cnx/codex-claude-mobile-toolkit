# GROK.md

## How to operate in this repo

Read `AGENTS.md` first.

Treat it as the primary source of truth for architecture, stack defaults, workflow selection, localization rules, runtime behavior, verification expectations, and self-improvement routing.

This file adapts the same toolkit conventions to Grok Code usage.
Do not diverge from `AGENTS.md` unless the user explicitly asks for a different setup.

If the task is explicitly routed through Antigravity, use `antigravity/README.md` and the matching workflow as an additional execution layer, not as a replacement for the default Grok Code flow.

---

## Default operating sequence

For most tasks in a project using this toolkit, follow this order:

1. identify the workflow category,
2. read the relevant prompt in `prompts/` if one exists,
3. read the matching skill in `skills/` if one exists,
4. inspect the current codebase before editing,
5. make the smallest coherent set of changes that fully solves the task,
6. end with a short coherence review,
7. produce an explicit verification summary.

---

## Pipeline-first routing

Prefer starting with a pipeline when the task needs coordinated execution:

- `prompts/finalize_mobile_change.md`
- `prompts/audit_mobile_repo.md`
- `prompts/investigate_flutter_bug.md`
- `prompts/review_mobile_change.md`
- `prompts/self_improve_toolkit.md`
- `prompts/new_realtime_feature.md`

Use skills after the lane is clear.

## Common routing

- realtime / stream-driven feature → `prompts/new_realtime_feature.md` + `skills/flutter-realtime-feature-pattern/`
- multiple upstream providers → `skills/flutter-source-adapter-pattern/`
- shared core across more than one app shell → `skills/flutter-shared-core-multi-surface/`
- Android TV or remote-driven UI → `skills/flutter-tv-ui-pattern/`
- screen quality or design tokens → `prompts/new_screen.md`, `prompts/improve_existing_ui.md`, `prompts/generate_design_tokens.md`, `prompts/review_flutter_ui.md`
- UI system and review assets → `skills/flutter-ux-ui-design-system/`, `skills/flutter-component-contracts/`, `skills/flutter-design-review/`, `skills/flutter-accessibility-audit/`
- UI lane docs → `core/routing/ui-ux-lane.md`, `core/checklists/ui-screen-quality.md`, `docs/ux-ui/mobile-design-system-lane.md`, `tokens/README.md`

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
- **review and finalize**
- **repo health audit**
- **toolkit self-improvement**
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
- iOS/macOS native boundary work: `flutter-apple-native-loop`
- design system and theme work: `flutter-ux-ui-design-system`
- reusable component API design: `flutter-component-contracts`
- UX/UI presentation review: `flutter-design-review`
- accessibility review: `flutter-accessibility-audit`
- refactor safety pass: `flutter-refactor-safely`
- review before merge: `flutter-pr-reviewer`
- repo rules and boundary alignment: `flutter-repo-conventions`
- finalize lane orchestration: `flutter-finalize-change`
- repo health audit orchestration: `flutter-audit-repo`
- structured review orchestration: `flutter-review-change`
- toolkit learning capture: `flutter-self-improve`
- commit readiness: `flutter-commit-readiness`
- realtime feature work: `flutter-realtime-feature-pattern`
- source adapter / multi-provider integration: `flutter-source-adapter-pattern`
- shared-core multi-surface planning: `flutter-shared-core-multi-surface`
- TV / non-touch UI work: `flutter-tv-ui-pattern`

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

---

## Grok Code notes

When using Grok Code in this repo:

- stay aligned with `AGENTS.md` for durable rules,
- use `docs/skill-workflow-map.md` when the correct prompt or skill is not obvious,
- prefer focused skills over broad freeform instructions,
- use pipeline prompts for multi-step work,
- keep the final report explicit about assumptions, verification, and unresolved risks.
