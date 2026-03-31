# flutter-realtime-feature-pattern

## Purpose

Use this skill to design, implement, or review Flutter features that depend on live events or continuous updates.

Examples:

- live comment feeds,
- live order or ride status,
- trading or telemetry screens,
- append-style notification feeds,
- match score or event timelines,
- stream-backed dashboards.

---

## When to use

Use this skill when the main feature complexity comes from one or more of these:

- live transport lifecycle,
- initial snapshot plus ongoing stream,
- reconnect behavior,
- event dedupe,
- auto-scroll and live-edge UX,
- background/resume continuity,
- unbounded live list growth.

Do **not** use this skill as the first choice when the feature is mostly a CRUD screen with occasional polling.

---

## Expected inputs

Before implementation, gather:

- transport type,
- initial snapshot requirement,
- event identity / dedupe strategy,
- expected session duration,
- expected update rate,
- live-edge behavior,
- background/resume expectations,
- whether multiple upstream providers exist,
- whether a TV or non-touch surface exists.

---

## Recommended design sequence

### 1. Separate snapshot from stream lifecycle

Model initial snapshot acquisition separately from live continuation.

### 2. Define a state model richer than loading/error/success

Consider:

- `initialLoading`
- `ready`
- `refreshing`
- `reconnecting`
- `stale`
- `degraded`
- `disconnected`
- `error`

Use only the states the feature genuinely needs.

### 3. Keep transport lifecycle out of widgets

Widgets should render view state.
They should not open connections or own retry loops.

### 4. Normalize and dedupe before visible mutation

Treat incoming events as untrusted until normalized.

### 5. Bound session growth

Choose a retention strategy intentionally.

### 6. Respect user-controlled scroll position

Do not force auto-scroll when the user intentionally moved away from the live edge.

### 7. Plan reconnect behavior explicitly

Define when the UI is reconnecting, stale, degraded, or disconnected.

---

## Suggested implementation shape

```text
presentation/
  controllers or notifiers
  state models
  widgets

domain/
  entities
  use cases
  repository contracts

data/
  live services or transport clients
  adapters
  repositories
```

The controller/notifier usually owns:

- connection start/stop,
- subscription management,
- state transitions,
- dedupe integration,
- visible collection policy,
- UI flags like `hasNewItemsWhileScrolledAway`.

---

## Key UX rules

- keep valid visible state during temporary reconnects when possible,
- show reconnecting/degraded state explicitly,
- use a new-item indicator instead of forced scroll jumps,
- preserve reading position when updates do not require repositioning,
- avoid focus disruption on TV/non-touch surfaces.

---

## Verification checklist

Verify at least:

- initial snapshot works,
- stream connects and updates visible state,
- duplicate events do not create duplicates,
- reconnect behavior matches the state contract,
- long sessions do not grow unbounded without strategy,
- disposal cleans up live subscriptions,
- background/resume behavior is deliberate,
- UI behavior near and away from the live edge works as intended.

If TV/non-touch applies, also verify focus stability.

---

## Expected outputs

A good completion should include:

1. state model,
2. connection lifecycle summary,
3. dedupe strategy,
4. growth strategy,
5. verification summary,
6. unresolved risks.
