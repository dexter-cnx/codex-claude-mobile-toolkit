param(
  [string]$Tool = "claude"
)

function Copy-RuleFile {
  param(
    [string]$Source,
    [string]$Destination
  )
  $dir = Split-Path -Parent $Destination
  if ($dir -and !(Test-Path $dir)) {
    New-Item -ItemType Directory -Path $dir -Force | Out-Null
  }
  Copy-Item $Source $Destination -Force
  Write-Host "Installed $Source -> $Destination"
}

switch ($Tool.ToLower()) {
  "claude"      { Copy-RuleFile "ai_rules/adapters/CLAUDE.md" "CLAUDE.md" }
  "agents"      { Copy-RuleFile "ai_rules/adapters/AGENTS.md" "AGENTS.md" }
  "cursor"      { Copy-RuleFile "ai_rules/adapters/AGENTS.md" "AGENTS.md" }
  "codex"       { Copy-RuleFile "ai_rules/adapters/AGENTS.md" "AGENTS.md" }
  "gemini"      { Copy-RuleFile "ai_rules/adapters/GEMINI.md" "GEMINI.md" }
  "copilot"     { Copy-RuleFile "ai_rules/adapters/copilot-instructions.md" ".github/copilot-instructions.md" }
  "vscode"      { Copy-RuleFile "ai_rules/adapters/instructions.md" ".instructions.md" }
  "junie"       { Copy-RuleFile "ai_rules/adapters/guidelines.md" ".junie/guidelines.md" }
  "antigravity" { Copy-RuleFile "ai_rules/adapters/antigravity_flutter.md" ".agent/rules/flutter-toolkit.md" }
  default {
    Write-Error "Unknown tool: $Tool. Use claude, agents, codex, cursor, gemini, copilot, vscode, junie, or antigravity."
    exit 1
  }
}
