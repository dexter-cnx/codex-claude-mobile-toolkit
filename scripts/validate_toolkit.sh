#!/usr/bin/env bash
set -euo pipefail

echo "==> Toolkit validation started"

FLUTTER_TEMPLATE_DIR="templates/flutter-starter"

run_if_exists() {
  local label="$1"
  shift
  echo ""
  echo "==> ${label}"
  "$@"
}

if command -v dart >/dev/null 2>&1; then
  run_if_exists "Dart format check" dart format --output=none --set-exit-if-changed .
else
  echo "Skipping dart format check: dart not found"
fi

if command -v flutter >/dev/null 2>&1; then
  if [ -f "pubspec.yaml" ]; then
    run_if_exists "Flutter pub get" flutter pub get
    run_if_exists "Flutter analyze" flutter analyze
    run_if_exists "Flutter test" flutter test
  elif [ -f "${FLUTTER_TEMPLATE_DIR}/pubspec.yaml" ]; then
    echo ""
    echo "==> Flutter starter template validation (${FLUTTER_TEMPLATE_DIR})"
    (
      cd "${FLUTTER_TEMPLATE_DIR}"
      flutter pub get
      flutter analyze
      flutter test
    )
  else
    echo "Skipping flutter analyze/test: no Flutter project root or starter template found"
  fi
else
  echo "Skipping flutter analyze/test: flutter not found"
fi

if [ -f "scripts/generate_i18n.dart" ] && command -v dart >/dev/null 2>&1; then
  run_if_exists "Localization generation smoke" dart run scripts/generate_i18n.dart
else
  echo "Skipping localization generation smoke"
fi

echo ""
echo "==> Toolkit validation complete"
