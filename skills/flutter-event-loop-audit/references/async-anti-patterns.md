# Async Anti-Patterns

## Watch for

### Sequential awaits for independent tasks
This increases total latency unnecessarily.

### Duplicate request firing
Caused by rebuilds, route changes, repeated listeners, or poor loading guards.

### Async work inside build-sensitive paths
Network or heavy work started during render-sensitive phases creates instability.

### Microtask overuse
Using microtask to "fix" timing often hides the real bug.

### Remote-first rendering when local data exists
This hurts perceived performance even when total load time is acceptable.

### Sync heavy transforms near rendering
Large sort/filter/map/decode work can cause visible jank.

## Preferred fixes

- parallelize independent awaits
- deduplicate request triggers
- move side effects to owned initialization points
- use event-queue deferral or staged loading when appropriate
- render local data first when safe
- move only proven CPU-heavy work off the main isolate
