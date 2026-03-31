# Patch Notes

This package is an overlay-style upgrade for `codex-claude-mobile-toolkit`.

## Main changes

- rewrote `README.md` into a production-grade repository guide
- expanded `AGENTS.md` with pipeline orchestration and self-improvement routing
- updated `CLAUDE.md` and `GROK.md` for pipeline-first operation
- expanded Antigravity guidance
- added production pipeline prompts:
  - `finalize_mobile_change`
  - `audit_mobile_repo`
  - `investigate_flutter_bug`
  - `review_mobile_change`
  - `self_improve_toolkit`
- added orchestrator and review skills
- added standardized templates for verification, audit, RCA, improvement, and change summaries
- added supporting docs for pipelines and artifact policy

## Intended merge strategy

Copy these files into the repository root and review diffs before committing.

This package assumes the current repo layout visible on GitHub as of 2026-03-31.
