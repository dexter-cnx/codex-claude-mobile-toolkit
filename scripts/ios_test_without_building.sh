#!/usr/bin/env bash
set -euo pipefail

WORKSPACE="${1:-ios/Runner.xcworkspace}"
SCHEME="${2:-Runner}"
DESTINATION="${3:-platform=iOS Simulator,name=iPhone 16}"

xcodebuild \
  -workspace "$WORKSPACE" \
  -scheme "$SCHEME" \
  -destination "$DESTINATION" \
  test-without-building
