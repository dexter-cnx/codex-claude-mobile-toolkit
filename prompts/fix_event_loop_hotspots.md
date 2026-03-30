# Fix Flutter Event Loop Hotspots

You are working in an EXISTING Flutter codebase.

You have already identified event-loop-related and runtime-responsiveness issues.
Your job now is to apply targeted improvements without destabilizing the architecture.

## Goals

Fix the highest-value issues related to:
- startup responsiveness
- async sequencing
- repeated side effects from rebuilds
- heavy work on the UI isolate
- misuse of microtask / post-frame scheduling
- poor cache-first behavior
- pagination and refresh inefficiencies

## Guardrails

- Do not rewrite the whole app.
- Do not change architecture unless necessary.
- Prefer minimal, safe, local patches.
- Keep current public APIs stable when possible.
- Do not introduce isolates unless the workload is truly CPU-heavy.
- Do not replace one timing hack with another timing hack.
- Avoid introducing hidden side effects.

## Preferred approach

1. Confirm the problematic execution path.
2. Patch the smallest high-impact hotspot first.
3. Preserve user-visible behavior unless the current behavior is clearly harmful.
4. Add comments only where timing or scheduling would otherwise be non-obvious.
5. Keep fixes easy for a human maintainer to reason about.

## Specific fix patterns to consider

### Startup
- show shell or cached content earlier
- defer non-critical initialization
- parallelize independent startup tasks
- avoid blocking first meaningful paint with secondary work

### Lifecycle
- move side effects out of `build()`
- use post-frame callback only when lifecycle semantics truly require it
- fix ownership of initialization so it does not rerun unintentionally

### Async orchestration
- replace sequential independent awaits with `Future.wait`
- deduplicate overlapping requests
- prevent refresh / pagination double firing
- add lightweight guards where appropriate

### Main-isolate load
- remove redundant transforms
- cache derived data when safe
- debounce expensive search/filter flows
- isolate only proven CPU-heavy work

### State updates
- reduce rebuild scope
- avoid notifier churn
- prevent repeated invalidation loops
- preserve cache-first rendering when local data exists

## Output requirements

When you make changes, report:

# Summary of Applied Fixes

# Files Changed

For each file:
- what changed
- why it changed
- expected user-visible improvement

# Risk Notes

Call out any behavior that should be regression-tested.

# Follow-up Recommendations

List remaining optional work that was intentionally not changed.
