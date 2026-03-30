#!/usr/bin/env bash
set -euo pipefail

DEVICE_ID="${1:-booted}"
OUTFILE="${2:-build/ios-screenshot.png}"

mkdir -p "$(dirname "$OUTFILE")"
xcrun simctl io "$DEVICE_ID" screenshot "$OUTFILE"
echo "Saved screenshot to $OUTFILE"
