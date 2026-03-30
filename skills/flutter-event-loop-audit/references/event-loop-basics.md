# Event Loop Basics

## Summary

Dart processes work through:
- synchronous code
- microtask queue
- event queue

Microtasks run before normal events.

In Flutter, UI code still competes for time on the main isolate, so bad scheduling decisions can hurt rendering smoothness.

## Key rules

- synchronous work blocks everything until complete
- microtasks are high priority and can delay normal events
- event queue scheduling is often safer for deferred non-critical work
- async continuation after `await` still resumes on the main isolate unless work is explicitly moved elsewhere

## Review implications

Flag code that:
- does too much sync work
- floods microtasks
- depends on scheduling tricks instead of clear ownership
- delays first paint with avoidable work
