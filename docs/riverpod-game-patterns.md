# Riverpod Game Patterns

## Goal
Use Riverpod for orchestration while keeping puzzle rules in pure Dart.

## Recommended provider split
- `levelDefinitionProvider(levelId)` -> immutable level content
- `gameSessionProvider(levelId)` -> runtime state for one active session
- `telemetryServiceProvider` -> side-effect service
- `chapterFlowProvider` -> chapter/level navigation and progression

## Rules
- Do not let Flame components own canonical game state.
- Do not compute turn rules in widgets.
- Keep `TurnResolver` outside UI layers.

## Suggested flow
Input -> Controller/Provider action -> Use case -> TurnResolver -> New state -> UI render
