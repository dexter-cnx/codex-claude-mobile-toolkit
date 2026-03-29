---
name: flutter-project-scaffold-riverpod-go-router
description: Scaffold or refresh a Flutter project foundation using Riverpod, go_router, Isar, easy_localization, and CSV-first localization.
---

# Purpose

Use this skill when the task is to create or refresh the foundation of a Flutter app that should follow the toolkit default preset.

This skill is for work inside a target Flutter project, not for editing the toolkit itself.

## Default preset

- Riverpod
- go_router
- Isar
- easy_localization
- CSV-first localization
- Material 3

## Working agreement

1. Read `AGENTS.md` first.
2. Inspect the current project before editing.
3. Prefer the smallest coherent scaffold that gives the project a stable foundation.
4. Reuse existing project patterns when they are already aligned with the toolkit.
5. Do not add ceremonial clean-architecture layers for trivial setup.

## Required foundation outcomes

By the end of the scaffold workflow, the target project should have:

- a clear entrypoint and bootstrap path
- centralized routing with `go_router`
- Riverpod wired at app root
- a Material 3 theme location
- a first feature or home flow that proves the structure works
- CSV-first localization source under `assets/i18n/translations.csv`
- generated locale JSON artifacts under `assets/i18n/generated/`
- a generator script at `scripts/generate_i18n.dart`
- dependencies and assets declared in `pubspec.yaml`

## Suggested file layout

Prefer this shape unless the target repo already has an equivalent structure:

```text
lib/
  main.dart
  app/
    app.dart
    bootstrap.dart
    router/
      app_router.dart
    theme/
      app_theme.dart
    l10n/
      localization.dart
    core/
      widgets/
  features/
    home/
      presentation/
        pages/
        providers/
assets/
  i18n/
    translations.csv
    generated/
scripts/
  generate_i18n.dart
```

## Scaffold sequence

1. Confirm whether this is a brand new project or a refresh of an existing one.
2. Inspect `pubspec.yaml`, `lib/`, asset layout, and any current routing/state setup.
3. Add only the missing pieces needed to align the app with the default preset.
4. Keep navigation definitions centralized and readable.
5. Keep persistence and repository logic out of widgets.
6. Create a small first-run path that can be launched and reviewed quickly.
7. Generate localization artifacts after updating the CSV source.
8. End with a short coherence review against `AGENTS.md`.

## Minimum verification

Run the lightest checks the environment allows:

- `flutter pub get`
- `dart run scripts/generate_i18n.dart`
- `flutter analyze`

If a command cannot run, state why and list what remains unverified.

## Deliverable summary

Report these items back to the user:

- what foundation pieces were added or refreshed
- where the routing, theme, and localization entrypoints now live
- whether localization artifacts were generated successfully
- what verification ran
- any follow-up gaps that still belong to the product repo
