# Riverpod Game Patterns

## Goal
Use Riverpod for orchestration, not for embedding raw puzzle rules in widgets.

## Recommended split
- `LevelDefinitionProvider` -> immutable authored content
- `GameSessionProvider` -> runtime state for one level/session
- `TelemetryServiceProvider` -> side-effect service
- `ChapterFlowProvider` -> chapter/level navigation and progression orchestration

## Rules
- Do not store canonical state only in Flame components.
- Do not compute turn rules inside widgets.
- Keep domain rules in pure Dart.

## Suggested flow
Input -> Controller/Provider action -> Use case -> TurnResolver -> New State -> UI render
