name flutter-handling-concurrency
description Moves CPU-heavy or blocking work off the UI path using isolates or structured background execution. Use when responsiveness is threatened by heavy computation or parsing.
metadata model last_modified

toolkit/manual-curated
Fri, 03 Apr 2026 16:00:00 +0700

# Handling Concurrency and Background Work

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

Use this skill when the main challenge is keeping the UI responsive while work happens elsewhere.

## Use when

- parsing large payloads
- processing images or files
- performing CPU-heavy transformations
- offloading expensive synchronous operations

## Do not use when

- the task is simple async I/O that already does not block the UI thread
- the overhead of isolates outweighs the benefit
- the work is tiny and infrequent

## Required inputs

- workload shape
- latency expectations
- data passed into background execution
- cancellation or retry expectations

## Deliverables

- concurrency strategy
- ownership of background tasks
- data transfer plan
- failure and cancellation behavior
- verification plan

## Workflow

1. Confirm the problem is CPU-bound or main-thread disruptive.
2. Define clear task input and output.
3. Move heavy work into background execution intentionally.
4. Keep messaging and error handling explicit.
5. Avoid overusing isolates for trivial work.

## Guardrails

- Do not add concurrency complexity without measurable need.
- Keep task boundaries serializable and understandable.
- Ensure lifecycle and cancellation concerns are documented.
- Keep UI updates on the correct thread.

## Output contract

- workload summary
- chosen background strategy
- task contract
- verification plan

## Verification checklist

- the UI remains responsive
- heavy work is moved off the blocking path
- failures are surfaced cleanly
- overhead is justified by measurable improvement

## Example request

“Move large JSON parsing off the UI path and document the isolate contract.”
