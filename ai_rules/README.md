# AI Rules Pack for `codex-claude-mobile-toolkit`

Production-grade rules pack for Flutter/Dart projects using AI coding assistants.

This pack is designed to work with the repo conventions typically used in `codex-claude-mobile-toolkit`:

- Flutter-first, production-oriented apps
- Clean Architecture with strict layer boundaries
- Material 3
- Web-ready by default when feasible
- Localization with CSV as source of truth
- AI-agent-friendly workflows for Codex, Claude Code, Copilot, Gemini CLI, VS Code, Junie, and Antigravity
- Compatible with design-first workflows such as Google Stitch handoff

## Why this exists

Flutter's official AI rules guidance recommends maintaining a master rules file and generating shorter variants for tools with stricter context limits. It also documents that rules file names and limits vary across tools. This pack adopts that model and maps it into a reusable structure for this toolkit.

## Folder structure

```text
ai_rules/
  README.md
  flutter_master_rules.md
  flutter_rules_10k.md
  flutter_rules_4k.md
  flutter_rules_1k.md
  adapters/
    AGENTS.md
    CLAUDE.md
    GEMINI.md
    antigravity_flutter.md
    copilot-instructions.md
    guidelines.md
    instructions.md
  profiles/
    flutter_getx_strict.md
    flutter_getx_lean.md
    flutter_riverpod_go_router.md
    flutter_web_portfolio.md
  packs/
    api_integration.md
    bugfix_flow.md
    feature_scaffolding.md
    refactor_safely.md
    ui_from_stitch.md
  prompts/
    reformat_rules_for_antigravity.md
    reformat_rules_for_claude.md
    reformat_rules_for_codex.md
    reformat_rules_for_copilot.md
    reformat_rules_for_vscode.md
  checklists/
    rules_verification_checklist.md

scripts/
  install_ai_rules.ps1
  install_ai_rules.sh
```

## Quick start

### 1) Choose your primary assistant
Use one of the ready-made adapter files:

- Claude Code -> `ai_rules/adapters/CLAUDE.md`
- Codex or Cursor-style agent workflow -> `ai_rules/adapters/AGENTS.md`
- Gemini CLI -> `ai_rules/adapters/GEMINI.md`
- GitHub Copilot -> `ai_rules/adapters/copilot-instructions.md`
- JetBrains Junie -> `ai_rules/adapters/guidelines.md`
- VS Code instructions -> `ai_rules/adapters/instructions.md`
- Antigravity -> `ai_rules/adapters/antigravity_flutter.md`

### 2) Copy into the location expected by your tool

```bash
# Claude Code
cp ai_rules/adapters/CLAUDE.md CLAUDE.md

# Cursor / AGENTS-based workflow
cp ai_rules/adapters/AGENTS.md AGENTS.md

# Gemini CLI
cp ai_rules/adapters/GEMINI.md GEMINI.md

# GitHub Copilot
mkdir -p .github && cp ai_rules/adapters/copilot-instructions.md .github/copilot-instructions.md

# VS Code
cp ai_rules/adapters/instructions.md .instructions.md

# JetBrains Junie
mkdir -p .junie && cp ai_rules/adapters/guidelines.md .junie/guidelines.md

# Antigravity
mkdir -p .agent/rules && cp ai_rules/adapters/antigravity_flutter.md .agent/rules/flutter-toolkit.md
```

### 3) Add one project profile
Append or merge one of these into your top-level rules file:

- `profiles/flutter_getx_strict.md`
- `profiles/flutter_getx_lean.md`
- `profiles/flutter_riverpod_go_router.md`
- `profiles/flutter_web_portfolio.md`

### 4) Add one or more task packs
These are optional focused instructions for common work types:

- `packs/feature_scaffolding.md`
- `packs/bugfix_flow.md`
- `packs/refactor_safely.md`
- `packs/ui_from_stitch.md`
- `packs/api_integration.md`

### 5) Verify behavior
Run through `checklists/rules_verification_checklist.md` after the first AI-generated change.

## Recommended usage model

Use this layered strategy:

1. **Master rules**
   - `flutter_master_rules.md`
   - canonical source of truth
2. **Tool adapter**
   - one file formatted for the current AI coding tool
3. **Project profile**
   - selects app architecture bias and stack choice
4. **Task pack**
   - narrows behavior for the current task

This keeps the repo maintainable and prevents one giant rules file from becoming stale or unfocused.

## Suggested repo integration for `codex-claude-mobile-toolkit`

If this repo is the toolkit itself, commit the entire `ai_rules/` directory and the install scripts.

If this toolkit is used as a submodule in a new app repo:

1. Add the toolkit as a submodule.
2. Copy the appropriate adapter file into the app repo root.
3. Merge the chosen project profile into the adapter file.
4. Keep `ai_rules/` inside the submodule for reuse and updates.
5. Optionally copy one task pack at a time into the active rules file while working on a feature.

## Maintenance policy

- Treat `flutter_master_rules.md` as the canonical source.
- Regenerate compact variants when major architecture rules change.
- Keep tool adapters short and opinionated.
- Avoid adding volatile package-specific instructions to every file.
- Prefer stable architectural constraints over temporary preferences.

## Notes

This rules pack intentionally avoids hard-coding every package decision into every adapter. Keep package-specific guidance in project profiles or task packs unless it is a default across most projects.
