# AI Working Rules

This document defines practical behavioral rules for coding-agent sessions in production repositories.

## Session rules

1. Start with the narrowest workable scope.
2. Inspect before editing.
3. Prefer the smallest effective change.
4. Bound command output by default.
5. Do not invent missing requirements.
6. Ask when confidence drops below 95%.
7. Summarize and reset when changing workstreams.

## Planning rules

- State assumptions that materially affect implementation.
- Identify impacted files before making changes.
- Separate confirmed facts from hypotheses.
- Prefer a short plan over a long essay.

## Editing rules

- Keep changes local unless the task explicitly requires broader refactoring.
- Preserve existing architecture unless a change request says otherwise.
- Avoid opportunistic cleanup outside the task boundary.
- Keep generated noise out of chat.

## Verification rules

- Run the smallest test or validation step that can prove the change.
- Prefer targeted analysis over full-repo analysis when possible.
- Report only actionable failures.

## Handoff rules

A useful handoff should include:
- objective
- status
- files touched
- assumptions confirmed
- remaining risk
- next recommended step
