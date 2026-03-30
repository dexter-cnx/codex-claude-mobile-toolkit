# Flutter ↔ iOS boundary notes

Typical native-only surfaces inside a Flutter repo:
- `ios/Runner/Info.plist`
- entitlements files
- app delegate / scene delegate integration points
- URL scheme registration
- permission usage descriptions
- push notification registration and capabilities
- plugin registration edge cases

Do not move business logic into native code unless the requirement explicitly demands it.
