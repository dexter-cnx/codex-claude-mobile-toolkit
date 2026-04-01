# Submodule Installation

Use this guide when you want to consume the toolkit as a Git submodule instead of copying files directly.

## Suggested flow

1. Add the toolkit as a submodule under a stable path such as `tools/codex-claude-mobile-toolkit`.
2. Commit the submodule pointer.
3. Reference the required root docs from your project onboarding notes.
4. Copy or mirror only the files your project wants to expose directly at the root.
5. Update the submodule intentionally rather than ad hoc.

## Why use a submodule

- keeps one source of truth for the toolkit
- makes multi-repo updates easier to coordinate
- avoids copying every file into every project

## Caveat

A submodule improves central maintenance, but the consuming repo still needs clear guidance on which toolkit files are authoritative for that project.
