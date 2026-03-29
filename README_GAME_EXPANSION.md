# Codex-Claude Mobile Toolkit: Game Expansion Pack

This pack adds game-focused docs, prompts, skills, and scripts intended for a
Flutter + Flame + Riverpod + Clean Architecture puzzle game such as Museum Heist.

## Add these into the toolkit repo
- `docs/`
- `prompts/`
- `skills/`
- `scripts/`

## Priority install order
1. `skills/flutter-turn-based-grid-core`
2. `skills/flutter-flame-board-renderer`
3. `skills/flutter-puzzle-telemetry-hooks`
4. `skills/level-schema-authoring`
5. `skills/level-validation-pipeline`
6. `skills/level-solver-integration`
7. `skills/chapter-pack-curation`
8. `skills/shared-repo-integration-patch`

## Notes
- These are skeletons, not full implementations.
- They are designed to fit the existing toolkit style: AGENTS/CLAUDE + prompts + skills + scripts.
- The core game domain should remain custom to the target game repo.
