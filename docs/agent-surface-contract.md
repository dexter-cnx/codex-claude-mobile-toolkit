# Agent Surface Contract

This document defines how a workflow should remain usable across multiple coding surfaces.

## Minimum contract for a reusable workflow

Every major workflow should declare:

- purpose
- input context expected
- output artifact expected
- supported surfaces
- known caveats
- verification requirement
- project memory update requirement

## Surface examples

- Codex CLI or Codex-style agents
- Claude Code
- Grok Code
- Antigravity
- OpenClaw orchestrated workflows

## Rule

A workflow is not portable just because the words are portable. It must specify what assumptions are runtime-specific.
