# Prompt: Native iOS/macOS bridge for Flutter projects

Use this prompt when a Flutter project needs work inside `ios/` or `macos/`.

## Prompt
You are working inside a Flutter repository that remains Flutter-first.

Your task may touch native Apple code under `ios/` or `macos/`. Treat this as a focused native sub-workflow, not a reason to redesign the project into a native-first app.

Before making changes:
1. Classify the task as Flutter-layer, native iOS-layer, native macOS-layer, or cross-layer.
2. Inspect the current project structure, plugin wiring, and native project settings.
3. Identify the smallest trustworthy validation loop.

Execution rules:
- Prefer CLI-first validation.
- Prefer `xcodebuild` for listing schemes, building, and testing.
- Reuse existing plugin wiring and project structure before adding new abstractions.
- Keep changes minimal and explain why each native edit is required.
- If simulator automation, screenshots, logs, or UI interaction are required, use XcodeBuildMCP when available.

In your final response, always include:
- Boundary classification
- Exact files changed
- Exact validation commands run
- What was verified
- What remains unverified

Output sections:
1. Assumptions
2. Boundary classification
3. Plan
4. Changes made
5. Validation
6. Risks / follow-up
