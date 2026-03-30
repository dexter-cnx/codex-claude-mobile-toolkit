# Review Flutter Event Loop and Async Hotspots

You are auditing an EXISTING Flutter project.

Your job is to review the codebase for runtime responsiveness risks related to:
- Dart event loop behavior
- async/await sequencing
- microtask vs event queue misuse
- bad lifecycle timing
- UI thread blocking
- delayed first meaningful paint
- dropped frames and jank
- repeated side effects caused by rebuilds
- cache-first vs network-first rendering choices
- isolate opportunities only where justified

## Project assumptions

Unless the project clearly uses something else, assume this toolkit preset:
- Flutter
- Riverpod
- go_router
- Isar
- easy_localization
- CSV-first localization
- Material 3

If the repo differs, adapt to the real code.

## Main objective

Do **not** rewrite the whole project.
Do **not** give generic textbook advice.
Inspect real code and produce a practical, prioritized audit.

## What to inspect first

Prioritize the most event-loop-sensitive paths:
1. app startup flow
2. splash / initial route
3. shell/home screen initialization
4. provider/notifier/controller startup
5. repository orchestration
6. list loading, refresh, and pagination
7. filtering/search/sorting flows
8. JSON parsing and heavy data transformation
9. image/file processing
10. any logic triggered during build or right after first render

## Red flags to actively search for

- async work started from `build()`
- `setState`, notifier mutation, or side effects at the wrong lifecycle moment
- repeated fetches caused by rebuilds
- sequential awaits for independent tasks
- `Future.microtask` used as a timing patch instead of a deliberate ordering tool
- overuse of `addPostFrameCallback`
- large sync loops on the main isolate
- slow startup due to remote-first logic
- heavy mapping/sorting/filtering before first meaningful paint
- duplicated listeners/subscriptions causing rebuild storms
- pagination code that can issue overlapping or duplicate requests
- local data ignored while waiting for network data
- expensive work hidden inside providers/selectors/build methods

## Rules

- Preserve the current architecture unless a change is clearly justified.
- Prefer the smallest safe fix first.
- Recommend isolates only when the work is truly CPU-heavy.
- If evidence is incomplete, say "Not enough evidence".
- If something is already well-designed, explicitly say so.

## Severity levels

Use exactly:
- Must Fix
- Should Improve
- Optional

## Output format

# Executive Summary

Provide a concise summary of the project's event-loop-aware health.

# Top 5 Highest-Impact Issues

List the five issues with the highest likely user impact.

# Full Findings

For each finding, use:

## Finding <number> — <short title>
**Severity:** Must Fix | Should Improve | Optional  
**Where:** <file path> — <class/function/widget/provider>  
**Problem:** <what the code is doing and why it is risky>  
**Why it matters:** <likely user-visible effect>  
**Recommended fix:** <smallest safe fix first>  
**Example patch:** <minimal patch if useful>  
**Confidence:** High | Medium | Low

# Quick Wins Under 1 Day

List practical changes that can be applied quickly.

# Staged Refactor Plan

## Phase 1 — Low-risk fixes
## Phase 2 — Structural improvements
## Phase 3 — Advanced optimization

# Final Verdict

State whether the project currently follows good Flutter event-loop-aware practices.

## Review style

Be concrete.
Use actual code evidence.
Prefer actionable findings over abstract commentary.
