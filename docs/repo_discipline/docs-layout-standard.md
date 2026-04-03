# Docs Layout Standard

## Problem

Toolkits often become hard to navigate because documents are added faster than information architecture evolves.

## Rule

Prefer doc clusters by concern, not random accumulation.

## Recommended layout

```text
docs/
  getting-started/
  architecture/
  repo_discipline/
  workflows/
  integrations/
  testing/
  release/
```

## Writing rules

- One document should have one main job.
- Index files should route readers quickly.
- Avoid giant “everything” files once content expands.
- Add cross-links near the top.
- State audience clearly: human, agent, reviewer, or maintainer.

## Naming

Prefer specific names:
- `validation-standard.md`
- `release-readiness-standard.md`
- `feature-module-contract.md`

Avoid vague names:
- `notes.md`
- `ideas.md`
- `stuff.md`

## For this toolkit

Use docs to help:
1. first adoption,
2. project bootstrap,
3. feature delivery,
4. review and release,
5. long-term maintenance.
