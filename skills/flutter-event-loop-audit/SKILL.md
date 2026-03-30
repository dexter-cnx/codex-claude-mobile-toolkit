# Flutter Event Loop Audit

## Purpose

Use this skill to audit an existing Flutter codebase for runtime responsiveness issues related to:
- Dart event loop behavior
- async scheduling
- microtask vs event queue usage
- lifecycle timing
- first paint delays
- rebuild-triggered side effects
- heavy work on the UI isolate
- pagination / refresh inefficiencies
- cache-first rendering opportunities

This skill is for **runtime behavior review**, not for compile-time build optimization.

## When to use

Use this skill when:
- startup feels slower than expected
- the app shows jank during loading, filtering, refresh, or navigation
- API calls seem duplicated
- `setState called during build` or timing-related UI issues appear
- a code review needs to focus on async correctness and responsiveness
- a project wants a targeted audit before larger refactors

## Do not use this skill for

- general code style review
- architecture review without runtime focus
- build.gradle / Xcode / CI optimization only
- broad rewrite proposals without evidence

## Audit scope

Prioritize these paths:
1. app startup
2. splash / initial route
3. shell and first meaningful screen
4. provider/notifier/controller initialization
5. repository orchestration
6. local cache vs remote fetch behavior
7. pull-to-refresh and infinite scroll
8. filtering, search, and sorting
9. JSON decode and transformation hotspots
10. image/file processing
11. layout-sensitive post-frame logic

## Core principles

- prefer evidence over theory
- prefer smallest safe fix first
- distinguish correctness from responsiveness
- do not recommend isolates unless the work is truly CPU-heavy
- do not treat microtask scheduling as a generic fix
- respect the existing architecture unless it clearly causes the issue

## Red flags

Look for:
- async work inside `build()`
- side effects caused by rebuilds
- provider/notifier init that runs repeatedly
- repeated fetches on route changes or widget rebuilds
- sequential independent awaits
- heavy sync work before first paint
- `Future.microtask` used to patch timing bugs
- too many post-frame callbacks
- full-list recomputation during append or search
- local data ignored while waiting on remote data
- duplicated listeners or invalidation loops
- CPU-heavy mapping, sorting, parsing, or image processing on the UI isolate

## Severity model

### Must Fix
Likely user-visible jank, duplicate side effects, broken lifecycle behavior, or serious startup delay.

### Should Improve
Suboptimal structure that probably affects smoothness, maintainability, or perceived performance.

### Optional
Helpful polish or future-proofing with limited immediate impact.

## Required output

Produce:
1. executive summary
2. top 5 highest-impact issues
3. full findings list
4. quick wins under 1 day
5. staged refactor plan
6. final verdict

## Finding format

Use:

## Finding <number> — <short title>
**Severity:** Must Fix | Should Improve | Optional  
**Where:** <file path> — <symbol>  
**Problem:** <what and why>  
**Why it matters:** <user-visible impact>  
**Recommended fix:** <smallest safe fix first>  
**Example patch:** <minimal patch if useful>  
**Confidence:** High | Medium | Low

## Suggested workflow

1. Scan startup and first-route paths.
2. Identify async entry points and scheduling-sensitive code.
3. Trace repeated side effects back to ownership and lifecycle.
4. Check whether local-first rendering is being skipped.
5. Flag CPU-heavy work on the UI isolate.
6. Produce a prioritized, evidence-based report.

## Cross-references

Use these references:
- `references/event-loop-basics.md`
- `references/flutter-lifecycle-timing.md`
- `references/async-anti-patterns.md`
- `references/cache-first-rendering.md`
- `references/isolate-decision-guide.md`
- `references/audit-checklist.md`
