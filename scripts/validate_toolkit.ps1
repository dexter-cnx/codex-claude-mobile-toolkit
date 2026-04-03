$ErrorActionPreference = "Stop"

Write-Host "==> Toolkit validation started"

function Run-Step {
    param(
        [string]$Label,
        [string]$Command,
        [string[]]$Args
    )

    Write-Host ""
    Write-Host "==> $Label"
    & $Command @Args
}

$dart = Get-Command dart -ErrorAction SilentlyContinue
$flutter = Get-Command flutter -ErrorAction SilentlyContinue

if ($dart) {
    Run-Step -Label "Dart format check" -Command "dart" -Args @("format", "--output=none", "--set-exit-if-changed", ".")
} else {
    Write-Host "Skipping dart format check: dart not found"
}

if ($flutter) {
    Run-Step -Label "Flutter analyze" -Command "flutter" -Args @("analyze")
    Run-Step -Label "Flutter test" -Command "flutter" -Args @("test")
} else {
    Write-Host "Skipping flutter analyze/test: flutter not found"
}

if ((Test-Path "scripts/generate_i18n.dart") -and $dart) {
    Run-Step -Label "Localization generation smoke" -Command "dart" -Args @("run", "scripts/generate_i18n.dart")
} else {
    Write-Host "Skipping localization generation smoke"
}

Write-Host ""
Write-Host "==> Toolkit validation complete"
