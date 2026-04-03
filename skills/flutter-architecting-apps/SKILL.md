name flutter-architecting-apps
description Architects a Flutter application for codex-claude-mobile-toolkit using strict presentation/domain/data boundaries and feature-oriented delivery. Use when structuring a new project or refactoring for scale.
metadata model last_modified

toolkit/manual-curated
Fri, 03 Apr 2026 16:00:00 +0700

# Architecting Flutter Applications for Toolkit Delivery

## Contents

  * Purpose
  * Use when
  * Do not use when
  * Required inputs
  * Deliverables
  * Workflow
  * Guardrails
  * Output contract
  * Verification checklist
  * Example request

## Purpose

Use this skill to define or refactor a Flutter codebase so that architecture is explicit, scalable, and friendly to agent-driven delivery.

This skill assumes the repository wants:
- strict separation between presentation, domain, and data concerns
- feature-oriented organization
- predictable dependency flow
- testable contracts
- verification before completion

## Use when

- creating a new Flutter application from a blank or near-blank repository
- refactoring a feature that currently mixes UI, state, and data access
- introducing repositories, use cases, DTOs, or service boundaries
- standardizing folder structure across multiple features
- defining architectural guardrails for agents

## Do not use when

- the task is limited to a single widget tree change
- the task only adds a small style tweak
- the repository intentionally uses a simple single-layer prototype structure and should stay that way
- the required change can be completed by a narrower skill such as forms, theming, or navigation

## Required inputs

- current repository structure or target structure
- chosen state lane: `GetX` or `Riverpod`
- routing lane: `Navigator 2.0` or `go_router`
- API and persistence expectations
- testing expectations
- localization policy
- platform targets

## Deliverables

- proposed folder structure
- dependency direction rules
- layer responsibilities
- base abstractions for repositories and use cases where appropriate
- migration plan if refactoring an existing codebase
- verification plan

## Workflow

1. Identify the feature boundaries.
2. Define the flow of data from source to UI.
3. Place business rules in domain-level contracts or use cases.
4. Place external integrations in the data layer.
5. Keep presentation focused on rendering, interaction, and state wiring.
6. Ensure each feature has clear ownership of models, mappers, repositories, and controllers/notifiers.
7. Define cross-cutting shared modules only after confirming reuse.

## Guardrails

- Do not call HTTP clients directly from widgets.
- Do not store mutable business logic in UI classes.
- Do not leak DTOs into presentation unless explicitly justified.
- Prefer feature-owned files over giant shared utility buckets.
- Avoid creating abstractions before a real boundary exists.
- Do not mix state-management paradigms inside one feature without an existing repo precedent.

## Output contract

When using this skill, the agent should produce:
- architecture summary
- target file tree
- layer-by-layer responsibilities
- implementation sequence
- migration risks
- verification steps

## Verification checklist

- dependency flow is one-way
- presentation has no direct infrastructure calls
- state ownership is explicit
- repository interfaces and implementations are separated where useful
- test seams exist for domain and presentation logic
- architecture changes are documented in the task summary

## Example request

“Refactor this feature into presentation/domain/data layers, keep GetX for state, and define a clean repository boundary for remote and local data.”
