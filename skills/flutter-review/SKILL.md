---
name: flutter-review
description: Review a Flutter project for architecture drift against the toolkit defaults.
---

# Purpose

Use this skill for post-change review work in Flutter repos that follow this toolkit.

## Review priorities

1. architecture drift from `AGENTS.md`
2. state management clarity
3. routing coherence
4. localization workflow correctness
5. persistence isolation from UI
6. missing verification or risky gaps

## What to inspect

- project structure under `lib/`
- provider placement and repository boundaries
- route definitions and navigation calls
- localization source and generated artifacts
- any persistence changes touching Isar schemas or mappings

## Review output

Lead with findings ordered by severity.

For each finding, include:

- the problem
- why it matters
- the file reference
- the likely regression or maintenance risk

If no findings are present, say that clearly and mention any residual testing gaps.
