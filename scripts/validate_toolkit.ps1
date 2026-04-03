$ErrorActionPreference = "Stop"

Write-Host "==> Toolkit validation started"

$flutterTemplateDir = "templates/flutter-starter"

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
    if (Test-Path "pubspec.yaml") {
        Run-Step -Label "Flutter pub get" -Command "flutter" -Args @("pub", "get")
        Run-Step -Label "Flutter analyze" -Command "flutter" -Args @("analyze")
        Run-Step -Label "Flutter test" -Command "flutter" -Args @("test")
    }
    elseif (Test-Path (Join-Path $flutterTemplateDir "pubspec.yaml")) {
        Write-Host ""
        Write-Host "==> Flutter starter template validation ($flutterTemplateDir)"
        Push-Location $flutterTemplateDir
        try {
            Run-Step -Label "Flutter pub get" -Command "flutter" -Args @("pub", "get")
            Run-Step -Label "Flutter analyze" -Command "flutter" -Args @("analyze")
            Run-Step -Label "Flutter test" -Command "flutter" -Args @("test")
        }
        finally {
            Pop-Location
        }
    }
    else {
        Write-Host "Skipping flutter analyze/test: no Flutter project root or starter template found"
    }
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
