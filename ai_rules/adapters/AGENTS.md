# AGENTS.md - Flutter Toolkit Agent Policy

This repo uses AI agents to assist with Flutter/Dart implementation.

## Operating mode
- Work incrementally.
- Respect the existing structure.
- Optimize for safe, reviewable commits.
- Treat architecture boundaries as constraints, not suggestions.

## Project architecture
- `presentation`: UI, controllers, route-facing state
- `domain`: entities, use cases, repository contracts
- `data`: DTOs, data sources, mappers, repository implementations

Do not allow DTOs or transport concerns to escape the data layer.

## Expected behavior for agents
Before coding:
- infer current stack and conventions
- identify affected files
- avoid unnecessary expansion

While coding:
- keep diffs scoped
- preserve naming conventions
- update tests for meaningful changes
- avoid placeholders and speculative abstractions

## Default answer format
- assumptions
- proposed file changes
- implementation
- risks
- tests
