# OPENCLAW.md

OpenClaw operating surface for `codex-claude-mobile-toolkit`.

This file explains how to use the toolkit when OpenClaw is the orchestration shell.

Shared durable repo rules live in `AGENTS.md`.

---

## Recommended OpenClaw usage model

Use OpenClaw when you want:

- remote or multi-device access to the toolkit,
- Discord-driven task dispatch,
- gateway-based agent coordination,
- shared execution conventions across multiple assistants.

OpenClaw does **not** replace the toolkit. It provides an execution shell around it.

---

## Read order inside an OpenClaw session

1. `README.md`
2. `AGENTS.md`
3. `OPENCLAW.md`
4. relevant task prompt from `prompts/`
5. relevant skill from `skills/`
6. relevant template from `templates/`

---

## Good OpenClaw task types

Best fit:

- structured repo audit,
- feature-delivery workflows,
- guided refactor passes,
- verification-heavy tasks,
- MCP-assisted Flutter work,
- cross-device or Discord-initiated development sessions.

---

## Typical OpenClaw lanes

### Flutter feature implementation
- route through `prompts/new_feature.md`
- use `skills/flutter-feature-scaffold/`
- use `skills/flutter-ui-screen-implementation/`
- finalize with verification notes

### Repo audit
- route through `prompts/audit_mobile_repo.md`
- use `skills/flutter-existing-project-audit/`
- emit a structured audit artifact

### UX/UI review
- route through `prompts/review_flutter_ui.md`
- use `skills/flutter-design-review/`
- use `skills/flutter-accessibility-audit/`
- emit `templates/ux-audit-report.md`

### Native Apple troubleshooting
- route through `prompts/fix_ios_macos_native_issue.md`
- use `skills/flutter-apple-native-loop/`
- capture exact build and verification notes

---

## OpenClaw execution recommendations

When driving this toolkit from OpenClaw:

- keep session cwd pointed at the target app repo,
- keep the toolkit either copied in, mounted, or available as a companion repo,
- make sure the chosen agent reads `AGENTS.md` before acting,
- use one primary workflow entrypoint at a time,
- keep generated artifacts visible and reusable.

---

## Reporting expectations

Every meaningful task should end with:

- summary of change or findings,
- files touched,
- verification results,
- known gaps,
- next recommended step.

OpenClaw sessions should favor explicit summaries because tasks are often initiated remotely or from chat surfaces.
