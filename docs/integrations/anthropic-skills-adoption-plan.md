# Adoption Plan: Anthropic Skills Patterns

## Goal

Incorporate the best ideas from `anthropics/skills` without turning the toolkit into a mixed-purpose skill dump.

## Phase 1 - immediate merge

Merge these folders:

- `skills/flutter-art-direction/`
- `skills/flutter-web-smoke-testing/`
- `skills/mcp-server-design/`
- `skills/toolkit-skill-author/`
- `prompts/design/mobile_ui_art_direction.md`
- `prompts/testing/flutter_web_playwright_smoke.md`
- `templates/ux/mobile_theme_brief.template.md`
- `templates/verification/web_smoke_report.template.md`

## Phase 2 - repo wiring

Update the main repo docs after merge:

- `README.md`
- `docs/skill-workflow-map.md`
- `docs/feature-registry.md` if you track skill additions there
- any agent-specific routing file that lists recommended skills

## Phase 3 - operationalization

Use the new skills in real work:

### For Google Stitch or design prep

Run:
- `flutter-art-direction`
- `prompts/design/mobile_ui_art_direction.md`

### For Flutter web verification

Run:
- `flutter-web-smoke-testing`
- `prompts/testing/flutter_web_playwright_smoke.md`

### For MCP server work

Run:
- `mcp-server-design`

### For toolkit maintenance

Run:
- `toolkit-skill-author`

## Guardrails

- Do not treat these skills as generic inspiration only; wire them into actual task entrypoints.
- Do not add the whole Anthropic repo.
- Do not import document-generation skills into the core path unless the toolkit explicitly grows a document-automation lane.
