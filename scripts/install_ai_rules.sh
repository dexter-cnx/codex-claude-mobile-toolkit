#!/usr/bin/env bash
set -euo pipefail

TOOL="${1:-claude}"

copy_file() {
  local src="$1"
  local dest="$2"
  mkdir -p "$(dirname "$dest")"
  cp "$src" "$dest"
  echo "Installed $src -> $dest"
}

case "$TOOL" in
  claude)
    copy_file "ai_rules/adapters/CLAUDE.md" "CLAUDE.md"
    ;;
  agents|cursor|codex)
    copy_file "ai_rules/adapters/AGENTS.md" "AGENTS.md"
    ;;
  gemini)
    copy_file "ai_rules/adapters/GEMINI.md" "GEMINI.md"
    ;;
  copilot)
    copy_file "ai_rules/adapters/copilot-instructions.md" ".github/copilot-instructions.md"
    ;;
  vscode)
    copy_file "ai_rules/adapters/instructions.md" ".instructions.md"
    ;;
  junie)
    copy_file "ai_rules/adapters/guidelines.md" ".junie/guidelines.md"
    ;;
  antigravity)
    copy_file "ai_rules/adapters/antigravity_flutter.md" ".agent/rules/flutter-toolkit.md"
    ;;
  *)
    echo "Unknown tool: $TOOL"
    echo "Usage: ./scripts/install_ai_rules.sh [claude|agents|codex|cursor|gemini|copilot|vscode|junie|antigravity]"
    exit 1
    ;;
esac
