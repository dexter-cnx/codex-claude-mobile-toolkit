#!/usr/bin/env bash
set -euo pipefail

WORKSPACE="${1:-ios/Runner.xcworkspace}"

xcodebuild -list -workspace "$WORKSPACE"
