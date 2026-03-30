#!/usr/bin/env bash
set -euo pipefail

PROJECT="${1:-macos/Runner.xcodeproj}"
SCHEME="${2:-Runner}"
DESTINATION="${3:-platform=macOS}"

xcodebuild \
  -project "$PROJECT" \
  -scheme "$SCHEME" \
  -destination "$DESTINATION" \
  build
