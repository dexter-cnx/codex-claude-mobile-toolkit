# Validation Standard

## Goal

Every meaningful change should leave the repo in a verifiable state.

## Required gate

A change is not considered complete until these are checked or explicitly waived:

1. formatting
2. static analysis
3. relevant tests
4. localization generation impact
5. build impact when applicable
6. documentation impact
7. release risk summary

## Preferred command contract

The repo should expose one easy entrypoint:

```bash
./scripts/validate_toolkit.sh
```

Windows equivalent:

```powershell
./scripts/validate_toolkit.ps1
```

## Minimum command set

```bash
dart format --output=none --set-exit-if-changed .
flutter analyze
flutter test
```

Add when relevant:
- `dart run scripts/generate_i18n.dart`
- golden tests
- patrol or integration smoke
- build_runner checks
- web build smoke
- Android/iOS build smoke in CI

## Evidence expectations

A validation summary should include:
- commands run
- pass/fail status
- skipped items with reason
- notable warnings
- release risk notes

## Waiver policy

Skipping validation is allowed only when:
- the environment lacks required SDK/tooling,
- the repo is intentionally partial,
- or the task is strictly documentation-only.

State the reason clearly.
