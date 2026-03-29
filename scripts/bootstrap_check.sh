#!/usr/bin/env bash
set -euo pipefail

for path in docs prompts skills scripts; do
  [[ -e "$path" ]] || { echo "missing: $path"; exit 1; }
done

echo "bootstrap-check: ok"
