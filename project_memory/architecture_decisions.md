# Architecture Decisions

Use this file to record durable technical decisions that should shape future implementation.

## Entry template

### [Decision title]
- **Date**:
- **Status**: proposed / accepted / superseded / deprecated
- **Context**:
- **Decision**:
- **Why**:
- **Consequences**:
- **Related files**:

---

## Seed entries

### Toolkit is an operating layer, not an app starter
- **Date**: 2026-04-01
- **Status**: accepted
- **Context**: The repository supports multiple agent surfaces and project integration modes.
- **Decision**: Treat the toolkit as a conventions/workflow layer attached to real project repos rather than a generated starter app.
- **Why**: This keeps the repository reusable across projects and prevents it from becoming tightly coupled to a single sample application shape.
- **Consequences**: Docs, prompts, skills, and templates should be portable and surface-aware.
- **Related files**: `README.md`, `AGENTS.md`, `docs/repo-integration-playbook.md`

