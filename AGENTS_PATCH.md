# AGENTS patch

Add a section like this to the root `AGENTS.md`:

## Game-specific rules
When the repository is a Flutter + Flame puzzle game:
- keep game rules in pure Dart
- keep Flame focused on rendering/input
- keep canonical level/session state outside Flame
- treat level JSON as source of truth
- preserve deterministic turn order
- add tests when changing gameplay rules
- prefer controller/application telemetry hooks over scattered widget-level hooks
