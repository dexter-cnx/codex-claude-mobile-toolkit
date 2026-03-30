# xcodebuild basics for Flutter-adjacent native work

## Common commands

List schemes:
```bash
xcodebuild -list -workspace ios/Runner.xcworkspace
```

Build for an iOS simulator:
```bash
xcodebuild \
  -workspace ios/Runner.xcworkspace \
  -scheme Runner \
  -destination 'platform=iOS Simulator,name=iPhone 16' \
  build
```

Build macOS:
```bash
xcodebuild \
  -project macos/Runner.xcodeproj \
  -scheme Runner \
  -destination 'platform=macOS' \
  build
```

Run tests without rebuilding when available:
```bash
xcodebuild \
  -workspace ios/Runner.xcworkspace \
  -scheme Runner \
  -destination 'platform=iOS Simulator,name=iPhone 16' \
  test-without-building
```
