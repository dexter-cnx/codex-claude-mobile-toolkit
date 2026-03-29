# Production-ready expansion plan for `codex-claude-mobile-toolkit`

## Why this pack exists
The current repo already provides a clean base for AI-assisted Flutter work with:
- `AGENTS.md`
- `CLAUDE.md`
- `prompts/`
- `skills/`
- `docs/`
- `plugins/`
- `mcp/`

This pack extends that structure for **Flutter + Flame + Riverpod + Clean Architecture** puzzle game workflows.

## Recommended merge order
1. Add docs
2. Add prompts
3. Add skills
4. Add scripts
5. Update root `README.md`
6. Update `AGENTS.md`
7. Add tests/examples in a later PR

## Suggested PR split
### PR 1 — docs + prompts
- game architecture docs
- new game prompts

### PR 2 — skills
- core puzzle skills
- pipeline skills
- integration skill

### PR 3 — scripts
- bootstrap helpers
- repo checks

### PR 4 — examples/tests
- sample level schema fixtures
- sample telemetry hook templates
