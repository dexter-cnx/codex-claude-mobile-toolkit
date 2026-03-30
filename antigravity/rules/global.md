# Global Rules

## Purpose
These rules apply to all Antigravity-driven work in this repository.

## Core operating rules
- Prefer small, reversible changes.
- Do not mix architecture refactors with feature delivery unless the task explicitly asks for both.
- Always inspect existing conventions before creating new patterns.
- Do not introduce duplicate state management, navigation, localization, or storage patterns.
- Keep generated output aligned with the repository's existing conventions.

## Required delivery behavior
- Summarize assumptions before implementation if assumptions materially affect structure.
- Report exactly which files were added, changed, renamed, or deleted.
- End every task with verification output.
- Be explicit about limits: if runtime verification could not be performed, say so.

## Architecture guardrails
- Respect clean separation between presentation, domain, and data layers.
- Avoid business logic in widgets.
- Avoid API parsing in presentation.
- Keep widgets small and compositional.
- Prefer reusable design tokens over one-off styling.

## Change boundaries
- Do not rewrite broad project structure unless requested.
- Do not silently replace package choices already standardized by the toolkit.
- Do not introduce new dependencies without justification.
