# AGENTS.md

## Toolkit Identity

This repository is a **workflow-first AI coding toolkit** for Flutter projects. It exists to help Codex-style agents and Claude Code follow the same engineering conventions across project bootstrap, feature work, localization, review, persistence changes, and build optimization.

The toolkit is intentionally:

- markdown-first
- reusable across multiple Flutter repos
- friendly to Codex and Claude Code
- pragmatic rather than over-engineered
- designed for local skills first, then plugin-style packaging later
- evidence-first for build optimization work

---

## Workflow Model

Treat this repository as a set of reusable workflow bundles. Every task should map to one of these workflows before code generation begins.

Primary workflows:

1. scaffold or refresh a Flutter project foundation
2. add or extend a feature without breaking architecture
3. maintain CSV-first localization
4. review architecture and coherence after edits
5. evolve local persistence safely
6. analyze and improve Flutter build performance
7. package or describe workflows in plugin-style form

When a user request is ambiguous, choose the closest workflow and preserve consistency. Avoid one giant instruction blob when a task-specific skill or prompt is clearer.

---

## Default Stack Preset

Unless the user explicitly changes the stack, the default preset for this toolkit is:

- Flutter
- Riverpod for state management
- go_router for routing
- Isar for local persistence
- easy_localization for runtime localization
- one CSV file as localization source of truth
- generated JSON locale files for runtime
- Material 3

These defaults exist to reduce ambiguity and keep generated projects coherent. Do not replace these choices casually.

---

## Architecture Rules

Prefer a pragmatic, simple clean architecture. Use boundaries where they add clarity, not ceremony.

Suggested structure:

```text
lib/
  app/
    app.dart
    bootstrap.dart
    router/
    theme/
    l10n/
    core/
      constants/
      errors/
      utils/
      services/
      widgets/
  features/
    <feature_name>/
  data/
    models/
    repositories/
    datasources/
  domain/
    entities/
    repositories/
    usecases/
```

Guidelines:

- keep domain abstractions only when they improve clarity
- do not generate boilerplate for trivial CRUD just because a pattern exists
- keep files reasonably small
- avoid giant god providers, giant god controllers, and giant god screens
- keep persistence logic out of widgets
- keep navigation definitions centralized and readable
- prefer maintainability over cleverness

---

## State Management Rules

Use Riverpod.

Guidelines:

- use repository providers for data access
- use feature-level notifiers/providers for local feature state
- use derived providers for filtered, sorted, and computed view state when helpful
- keep async state easy to trace
- avoid placing repository logic directly inside widgets
- avoid creating one giant app-wide provider for everything

---

## Routing Rules

Use go_router.

Guidelines:

- centralize route definitions
- use readable route names and paths
- pass route params cleanly
- keep navigation flows obvious
- avoid scattering ad hoc navigation logic across the widget tree

---

## Localization Rules

Localization is **CSV-first**.

Source of truth:

- `assets/i18n/translations.csv`

Runtime artifacts:

- generated locale files, for example:
  - `assets/i18n/generated/en.json`
  - `assets/i18n/generated/th.json`

Expected workflow:

1. edit `assets/i18n/translations.csv`
2. run `dart run scripts/generate_i18n.dart`
3. update generated locale JSON files
4. load generated locale files through `easy_localization`

Rules:

- do not manually maintain multiple source translation files
- the CSV file is the master source
- generated files are runtime artifacts
- dotted keys should map to nested JSON when practical
- structure the generator so new locales can be added later without rewriting the script

---

## Persistence Rules

Use Isar for local-first persistence in the default preset.

Guidelines:

- keep schema changes understandable
- isolate data mapping and persistence logic from UI code
- avoid overbuilding for future cloud sync unless the user asks for it
- favor migration sanity and readable schemas over premature flexibility

---

## Build Optimization Rules

Build optimization work must be **evidence-first, not guess-first**.

Required flow:

1. benchmark first
2. analyze without changing project files
3. generate a reviewable optimization plan
4. wait for approval
5. apply only approved fixes
6. re-benchmark and verify

Rules:

- never silently tune build files before a plan exists
- keep build outputs under `.build-benchmark/`
- prefer reversible, minimal diffs
- document rationale, expected impact, risk, affected files, and rollback notes
- do not claim improvements without post-fix benchmark evidence

Prioritize:

1. local developer loop improvements
2. incremental build improvements
3. high-impact low-risk cleanup
4. release build overhead
5. artifact size where relevant

---

## Plugin-Style Packaging Direction

This toolkit should be usable in three layers:

1. root repo guidance through `AGENTS.md` and `CLAUDE.md`
2. task-specific prompts in `prompts/`
3. reusable workflow bundles in `skills/`

Optional packaging layers may be added later:

- `.codex-plugin/plugin.json`
- `agents/openai.yaml`
- MCP config stubs

The repository should become increasingly self-describing over time.
