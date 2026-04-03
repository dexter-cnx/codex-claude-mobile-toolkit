name flutter-caching-data-offline-first
description Implements cache-aware and offline-friendly data flows for Flutter apps. Use when startup speed, reduced network dependency, or resilience matters.
metadata model last_modified

toolkit/manual-curated
Fri, 03 Apr 2026 16:00:00 +0700

# Caching Data and Offline-First Behavior

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

Use this skill when a feature should remain fast and useful even when the network is slow, unavailable, or intermittent.

## Use when

- reducing repeated network calls
- improving startup speed
- supporting stale-while-revalidate behavior
- persisting recent content for offline reading
- protecting the UI from transient connectivity issues

## Do not use when

- the data is highly sensitive and must never be cached locally
- the feature is a pure online transaction flow with no offline value
- the task is simply adding a one-off remote call

## Required inputs

- freshness expectations
- offline behavior expectations
- invalidation rules
- local storage choice
- conflict rules
- UX requirements for stale data

## Deliverables

- cache policy
- read path and write path
- invalidation strategy
- stale/fresh UI behavior
- verification plan

## Workflow

1. Classify the data by freshness and importance.
2. Decide whether cache is memory, disk, or both.
3. Define read order: cache, network, or mixed strategy.
4. Define invalidation and refresh triggers.
5. Represent stale states explicitly in the UI.
6. Avoid silent cache corruption by versioning or validating structures where useful.

## Guardrails

- Do not cache blindly.
- Do not make stale data indistinguishable from fresh data when that matters.
- Keep invalidation rules explicit.
- Avoid hidden side effects that mutate cache from many places.
- Align the cache policy with user expectations.

## Output contract

- cache strategy summary
- data freshness rules
- invalidation triggers
- UX behavior for offline/stale states
- verification plan

## Verification checklist

- cache ownership is clear
- stale/fresh behavior is intentional
- relaunch behavior is correct
- refresh and invalidation paths are testable
- the UI can explain offline or stale conditions where needed

## Example request

“Add stale-while-revalidate caching for the article feed so users see recent data immediately and refresh in the background.”
