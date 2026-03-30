# Flutter ↔ macOS boundary notes

Typical macOS native surfaces:
- `macos/Runner/Info.plist`
- app sandbox / entitlements
- desktop menu or window behavior
- file access permissions
- signing / packaging concerns
- plugin support differences from iOS

Prefer keeping shared app behavior in Dart unless the capability is truly platform-specific.
