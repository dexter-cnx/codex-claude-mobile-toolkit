# codex-claude-mobile-toolkit

A reusable mobile app toolkit for **Codex**, **Claude Code**, and **Antigravity** workflows, centered on Flutter-first project delivery.

This repository is designed to be used as a shared toolkit layer that can be:
- copied into a project,
- added as a submodule,
- or referenced as a conventions/skills repo by coding agents.

It provides:
- repo-wide rules and conventions,
- reusable prompts and workflows,
- focused implementation skills,
- Flutter/Dart MCP setup notes,
- templates for implementation and verification artifacts.

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

### Antigravity
Use:
- `antigravity/README.md`
- `antigravity/rules/`
- `antigravity/workflows/`
- `antigravity/task-templates/`
- `antigravity/artifacts/`
- `mcp/flutter-dart-mcp-setup.md`

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

Adding the Antigravity layer does not replace the existing Codex or Claude Code surfaces.

- `Codex` continues to use `AGENTS.md`, `prompts/`, `skills/`, and `templates/`.
- `Claude Code` continues to use `CLAUDE.md` plus the same repo-wide rules from `AGENTS.md`.
- `Antigravity` acts as an optional workflow and artifact layer on top of the same toolkit conventions.

In other words, Antigravity should be treated as additive, not as a breaking change to the default Codex or Claude Code operating model.

## Repository structure

```text
.
├─ AGENTS.md
├─ CLAUDE.md
├─ README.md
├─ antigravity/
│  ├─ README.md
│  ├─ rules/
│  ├─ workflows/
│  ├─ task-templates/
│  └─ artifacts/
├─ prompts/
├─ skills/
├─ mcp/
├─ templates/
├─ scripts/
├─ schemas/
└─ examples/
```

## Recommended operating model

### Rules
Put durable project rules in `AGENTS.md` and `antigravity/rules/`.

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
