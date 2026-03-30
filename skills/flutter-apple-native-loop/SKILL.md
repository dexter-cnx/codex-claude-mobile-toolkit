# Flutter Apple Native Loop

## Purpose
Use this skill when a Flutter repository needs direct work in `ios/` or `macos/`.

This skill adds a native Apple validation lane without changing the repo's primary identity as a Flutter project.

## When to use
- Info.plist changes
- entitlements
- URL schemes / deep links
- push / permission wiring
- plugin integration issues
- app lifecycle issues
- macOS packaging or desktop-specific fixes
- simulator screenshots or logs for verification

## Core principles
- Flutter-first, native-subworkflow second
- CLI-first validation
- Small trustworthy validation loops
- Reuse before inventing
- Escalate to XcodeBuildMCP only when needed

## Workflow
1. Inspect boundary
   - Is this Flutter-layer, native-layer, or cross-layer?
2. Inspect project state
   - schemes, targets, plugins, plist, entitlements, build settings
3. Edit narrowly
4. Validate narrowly
5. Capture evidence
6. Report verified vs unverified scope

## Default commands
- `xcodebuild -list -workspace ios/Runner.xcworkspace`
- `xcodebuild -workspace ios/Runner.xcworkspace -scheme Runner -destination 'platform=iOS Simulator,name=iPhone 16' build`
- `xcodebuild -project macos/Runner.xcodeproj -scheme Runner -destination 'platform=macOS' build`

## Escalate to XcodeBuildMCP when
- screenshots are required
- simulator interaction is required
- runtime logs are needed from launched apps
- scheme/target inspection is cumbersome via CLI alone

## Required output
- Boundary classification
- Files changed
- Commands run
- Evidence gathered
- Risks / remaining checks
