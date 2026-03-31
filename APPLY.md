# Apply this overlay pack

This zip is designed as a **repo overlay** for `dexter-cnx/codex-claude-mobile-toolkit`.

## Apply steps

From the target repository root:

```bash
unzip codex-claude-mobile-toolkit-production-overlay.zip -d .
git status
```

Then review and commit:

```bash
git add AGENTS.md CLAUDE.md GROK.md README.md docs prompts skills antigravity examples

git commit -m "Add production-grade realtime, multi-surface, source-adapter, and TV workflow docs"
```

## What this overlay changes

- Replaces root control docs with expanded production-grade versions.
- Adds deeper architecture docs for realtime, multi-surface, source adapters, and TV UI.
- Adds a new realtime prompt.
- Adds a new Antigravity workflow for realtime feature delivery.
- Adds four new skills.
- Adds example placeholders for future reference demos.

## Notes

This overlay assumes the destination repo already contains the broader toolkit structure.
It is intended to be unzipped at the repository root.
