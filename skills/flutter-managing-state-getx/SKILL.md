name flutter-managing-state-getx
description Implements production-grade GetX state ownership for toolkit-aligned Flutter apps. Use when a feature intentionally follows the GetX lane.
metadata model last_modified

toolkit/manual-curated
Fri, 03 Apr 2026 16:00:00 +0700

# Managing Flutter State with GetX

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

Use this skill when a feature or project intentionally uses GetX for controller-based state management and reactive updates.

## Use when

- the repository already uses GetX
- the feature needs controller-driven UI state
- navigation and dependency injection already follow GetX conventions
- reactive observable state should be explicit and lightweight

## Do not use when

- the repository standard is Riverpod
- the task is architecture-wide and state choice is not yet decided
- the work only touches local widget state that `StatefulWidget` can own cleanly

## Required inputs

- current feature boundaries
- controller ownership rules
- state shape
- side effects and async operations
- route interactions
- testing expectations

## Deliverables

- controller or controllers with explicit responsibilities
- immutable-ish state conventions where practical
- event and side-effect handling plan
- UI binding approach
- disposal and lifecycle notes

## Workflow

1. Identify what state belongs to the feature.
2. Separate persistent feature state from transient UI flags.
3. Create a controller with a narrow responsibility.
4. Keep async workflows explicit.
5. Update the UI through clear reactive bindings.
6. Avoid exposing low-level services directly to widgets.
7. Ensure test seams exist around controller behavior.

## Guardrails

- Do not make one controller own unrelated screens.
- Do not let widgets mutate remote/data-layer dependencies directly.
- Avoid global singleton sprawl unless the repository already formalizes it.
- Prefer explicit controller methods over ad hoc mutation from many widgets.
- Do not mix GetX and Riverpod in the same feature without a migration plan.

## Output contract

- controller responsibilities
- state fields
- public actions
- UI binding notes
- verification plan

## Verification checklist

- controller scope is clear
- state mutations are explicit
- async loading/error paths are represented
- widgets stay focused on rendering and interaction
- tests cover controller transitions where practical

## Example request

“Add a GetX controller for a paginated feed with refresh, load-more, and error recovery.”
