# Toolkit production-hardening overlay

This overlay is intended to be copied over the latest `codex-claude-mobile-toolkit` repository and committed as a production-grade toolkit documentation and UX/UI lane upgrade.

## Included changes

### Core repo positioning
- Rewritten `README.md` with production-grade navigation and operating model
- Expanded `AGENTS.md`
- Added or refreshed agent-specific routing docs:
  - `CLAUDE.md`
  - `CODEX.md`
  - `OPENCLAW.md`

### Maintainer and routing docs
- `docs/skill-workflow-map.md`
- `docs/workflow-pipelines.md`
- `docs/pipeline-vs-skill.md`
- `docs/self-improvement-routing.md`
- `docs/verification-artifacts.md`
- `docs/release-checklist.md`
- `docs/repo-integration-playbook.md`
- `docs/skill-authoring-guide.md`

### UX/UI lane
- `docs/ux-ui/mobile-design-system-lane.md`
- `prompts/new_screen.md`
- `prompts/improve_existing_ui.md`
- `prompts/generate_design_tokens.md`
- `prompts/review_flutter_ui.md`
- `skills/flutter-ux-ui-design-system/SKILL.md`
- `skills/flutter-component-contracts/SKILL.md`
- `skills/flutter-design-review/SKILL.md`
- `skills/flutter-accessibility-audit/SKILL.md`
- `templates/ux-audit-report.md`
- `templates/component-spec.md`
- `templates/design-handoff.md`
- `tokens/README.md`

### Shared core fragments
- `core/rules/flutter-defaults.md`
- `core/rules/verification-first.md`
- `core/routing/ui-ux-lane.md`
- `core/checklists/ui-screen-quality.md`

## Suggested commit message

```bash
git add .
git commit -m "feat(toolkit): production-harden docs and add flutter ux/ui quality lane"
```
