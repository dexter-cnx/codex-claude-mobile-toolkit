# Shared Verification Guidance

## Core rule
No code task is complete without a verification summary.

## Minimum verification
For most Flutter tasks:
```bash
flutter pub get
dart format .
flutter analyze
flutter test
```

## Additional verification for UI work
Also include:
- target screen smoke check,
- screenshots or equivalent notes,
- known gaps if emulator or device verification was not available.

## Additional verification for build or native work
Also include the relevant platform-specific commands and artifacts.

## Verification reporting contract
A useful verification summary should include:
- what commands were run,
- what passed,
- what failed,
- what could not be run,
- what assumptions remain.

## Honesty rule
Do not claim validation happened if it did not.
