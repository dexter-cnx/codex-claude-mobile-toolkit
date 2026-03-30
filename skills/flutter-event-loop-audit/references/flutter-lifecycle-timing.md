# Flutter Lifecycle Timing

## Focus areas

Inspect:
- `initState`
- `didChangeDependencies`
- `build`
- post-frame callbacks
- notifier/provider initialization
- route-entry side effects

## Rules of thumb

### `build()`
Should stay pure.
Do not start network calls, subscriptions, or expensive computation from `build()` unless carefully memoized and clearly justified.

### `initState`
Good for one-time setup owned by the widget.
Be careful with context-dependent work and anything that can trigger immediate state churn.

### `didChangeDependencies`
Use when dependency-driven setup is truly needed.
Watch for repeated execution.

### Post-frame callback
Use only when work must happen after layout/render of the current frame.
Do not use it as a blanket fix for bad state timing.

## Common review notes

- repeated initialization often means ownership is wrong
- lifecycle errors are often caused by side effects living too close to rendering
- timing hacks usually indicate a structural issue nearby
