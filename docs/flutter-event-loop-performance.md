# Flutter Event Loop and Runtime Responsiveness

## Purpose

This document explains how to reason about Dart async behavior, Flutter frame scheduling, and common runtime performance pitfalls in real Flutter apps.

It exists to support review, audit, and refactor workflows across this toolkit.

## Core mental model

Flutter UI code runs on the main Dart isolate for the app's UI logic.

That does **not** mean the whole Flutter engine is single-threaded. The engine has other threads for rasterization, platform work, and I/O. But your widget tree, state updates, and most app-side Dart execution still compete for time on the UI isolate.

When UI-sensitive work takes too long on the main isolate, users feel:
- slow startup
- delayed first meaningful paint
- dropped frames
- input lag
- scroll hitching
- jank during refresh, filtering, or pagination

## The Dart event loop

Dart processes work through:
- synchronous execution
- microtask queue
- event queue

### Synchronous code
Runs immediately and blocks everything else until finished.

### Microtask queue
High-priority queued work.
Microtasks run before normal events.

Typical sources:
- `Future.microtask`
- `scheduleMicrotask`
- async continuation after `await`

### Event queue
Normal queued work.

Typical sources:
- `Future(() {})`
- `Future.delayed(...)`
- timers
- I/O completions
- frame callbacks entering the scheduling pipeline

## Why this matters in Flutter

Flutter frames are time-sensitive.
At 60Hz, the app has roughly 16.67ms per frame.
At 120Hz, the budget is even smaller.

If synchronous work or too many microtasks consume too much time, frame work gets delayed and the UI stutters.

## Practical implications

### 1. `await` does not block the thread
`await` suspends the function and resumes later.
But the resumed continuation still needs time on the main isolate.

Bad async structure can still create visible lag.

### 2. Microtasks are not a free fix
Do not use `Future.microtask` as a general “make this happen later” hammer.

Use it only when strict ordering really matters.

Overuse can:
- starve normal events
- delay frame processing
- make lifecycle timing harder to reason about

### 3. Event-queue yielding is often safer
If the goal is to defer work and let the UI breathe first, scheduling onto the event queue is often more appropriate than microtask scheduling.

Typical cases:
- low-priority follow-up work
- non-critical startup work
- staged loading after first paint

### 4. Post-frame callbacks are lifecycle tools, not general async tools
Use `WidgetsBinding.instance.addPostFrameCallback` when work must happen **after** the current frame completes.

Examples:
- showing a dialog after first render
- reading layout-dependent values
- triggering follow-up logic that must not run during build

Do not use post-frame callbacks to hide broken state flow.

## Common anti-patterns

### Async work in `build()`
`build()` may run many times.
Side effects in `build()` often cause:
- repeated API requests
- duplicated subscriptions
- endless refresh loops
- unstable rendering

### Sequential awaits for independent work
Bad:

```dart
final a = await repo.loadA();
final b = await repo.loadB();
final c = await repo.loadC();
```

Better when independent:

```dart
final results = await Future.wait([
  repo.loadA(),
  repo.loadB(),
  repo.loadC(),
]);
```

### Blocking first render with non-critical work
Do not hold the first meaningful UI hostage for:
- analytics init
- non-essential remote config
- secondary repository warmup
- large sort/filter passes
- non-visible tab preloading

### Heavy CPU work on the UI isolate
Examples:
- huge JSON decode
- large list sort/filter/map
- image processing
- file compression
- expensive diffing or merging

Move only truly CPU-heavy work off the main isolate.
Do not overcomplicate simple code.

### Using microtask to patch lifecycle mistakes
Bad smell:
- state updates scheduled via microtask to dodge framework timing errors
- hiding `setState() called during build` instead of fixing ownership/timing

### Rebuild-triggered duplicate fetches
Watch for:
- provider invalidation loops
- fetch inside widget rebuild path
- notifier init called repeatedly
- route re-entry refetching data without need

## Startup guidance

Prefer:
1. show shell UI quickly
2. show cached/local state if available
3. fetch network state in background
4. reconcile and update incrementally

Avoid:
- blank screen while waiting for remote data
- serial startup chains when some tasks are independent
- expensive parsing before first meaningful paint

## Cache-first rendering guidance

When local data exists:
- render local data first
- mark UI as refreshing if needed
- fetch remote updates in background
- replace only the parts that changed

This often improves perceived performance more than raw benchmark gains.

## Pagination and list guidance

Audit for:
- duplicate page requests
- scroll hitching due to sync transforms
- full-list rebuilds on append
- synchronous sort/filter on each keystroke
- loading flags that block interaction too aggressively

Prefer:
- append-only state updates when possible
- debounced filtering
- background-safe preprocessing where justified
- lightweight item widgets
- stable keys where needed

## Isolate decision guide

Use another isolate when:
- work is demonstrably CPU-heavy
- payload size is worth the overhead
- the work is not tightly coupled to UI objects
- profiling or code evidence suggests main-isolate contention

Avoid isolate complexity when:
- work is small
- the real problem is redundant execution
- the bottleneck is network latency rather than CPU
- a simpler scheduling fix solves the issue

## Review checklist

During audit, inspect:
- app startup path
- splash / first route
- `initState`
- `didChangeDependencies`
- `build`
- state notifier/controller initialization
- repository orchestration
- local-first vs network-first behavior
- JSON decode and mapping hotspots
- filtering/sorting/search logic
- list pagination and refresh flow
- image/file processing
- route transitions and post-frame usage

## Severity model

### Must Fix
Likely user-visible jank, duplicate side effects, lifecycle bugs, or serious startup regressions.

### Should Improve
Suboptimal async structure or render timing that is not yet catastrophic.

### Optional
Low-risk polish, cleanup, or future-proofing.

## Preferred recommendation style

When reviewing code:
- be evidence-based
- prefer the smallest safe fix first
- do not rewrite architecture unless necessary
- distinguish runtime responsiveness from code style
- call out good existing patterns explicitly

## Final principle

Good Flutter async design is not just about correctness.

It is about:
- doing the right work
- at the right time
- on the right execution path
- with the least disruption to frame rendering
