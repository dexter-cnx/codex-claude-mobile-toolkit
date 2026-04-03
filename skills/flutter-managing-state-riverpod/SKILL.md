name flutter-managing-state-riverpod
description Implements production-grade Riverpod state ownership for toolkit-aligned Flutter apps. Use when a feature intentionally follows the Riverpod lane.
metadata model last_modified

toolkit/manual-curated
Fri, 03 Apr 2026 16:00:00 +0700

# Managing Flutter State with Riverpod

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

Use this skill when the repository or feature uses Riverpod for dependency injection, reactive state, and test-friendly composition.

## Use when

- the repository already uses Riverpod
- provider composition is the preferred dependency model
- the feature needs explicit async state, caching, or dependency overrides in tests
- the app uses `go_router` or other patterns that pair well with provider-driven state

## Do not use when

- the repository standard is GetX
- the change is a tiny widget-local state tweak
- the architecture choice has not yet been made

## Required inputs

- current provider conventions
- async behavior and side effects
- state ownership boundaries
- lifecycle expectations
- test strategy

## Deliverables

- provider tree or provider additions
- notifier or controller ownership plan
- async state handling plan
- UI consumption rules
- override strategy for tests if needed

## Workflow

1. Identify the feature state and dependencies.
2. Decide which providers are public feature contracts and which remain internal.
3. Use notifier-based or async-value-based flow intentionally.
4. Keep side effects centralized.
5. Consume providers from presentation in a predictable way.
6. Avoid turning providers into a hidden global junk drawer.
7. Define how tests will override dependencies.

## Guardrails

- Do not create providers without ownership rationale.
- Do not duplicate state across many providers unless derived state clearly justifies it.
- Keep mutation paths explicit.
- Avoid mixing GetX and Riverpod inside one feature unless the repository already supports hybrid migration.

## Output contract

- provider inventory
- notifier responsibilities
- state transitions
- UI consumption notes
- verification plan

## Verification checklist

- provider boundaries are clear
- async loading/error/data states are handled
- side effects live in predictable places
- tests can override dependencies cleanly
- presentation code remains thin

## Example request

“Create a Riverpod feature state flow for profile editing with optimistic save and rollback on failure.”
