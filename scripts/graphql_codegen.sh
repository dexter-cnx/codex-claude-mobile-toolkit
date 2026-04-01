#!/usr/bin/env bash
set -euo pipefail

# Run GraphQL code generation for a Flutter/Dart project.
#
# This wrapper intentionally stays generic.
# Projects should adapt the command to their chosen stack,
# for example graphql_codegen, ferry_generator, or another tool.
#
# Example default behavior:
#   ./scripts/graphql_codegen.sh
#
# Optional override:
#   GRAPHQL_CODEGEN_CMD='dart run build_runner build --delete-conflicting-outputs'
#   ./scripts/graphql_codegen.sh

CMD="${GRAPHQL_CODEGEN_CMD:-dart run build_runner build --delete-conflicting-outputs}"

echo "running GraphQL code generation"
echo "$CMD"

eval "$CMD"

echo "GraphQL code generation finished"
