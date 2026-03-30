# Apple-native lane for Flutter

This repo is Flutter-first, but some tasks must be handled at the native Apple boundary.

This lane exists to make those tasks repeatable and tool-friendly.

## What this lane is for
- iOS/macOS config and project wiring
- plugin boundary fixes
- Info.plist and entitlement changes
- URL schemes and deep links
- permission descriptions
- simulator-based verification

## What this lane is not for
- rewriting the app as SwiftUI/AppKit
- moving shared app logic out of Flutter without a strong reason
- running heavyweight validation when a small proof is enough

## Tooling philosophy
- Start with prompts and scripts.
- Use `xcodebuild` as the default terminal interface.
- Introduce XcodeBuildMCP only when deeper simulator or runtime control is required.
