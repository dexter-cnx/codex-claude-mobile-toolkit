# Realtime State Patterns for Flutter Features

Use this guide when a feature is driven by live events, including:

- WebSocket streams,
- subscription feeds,
- live comments,
- live match or order status,
- streaming telemetry,
- append-style notifications.

---

## Core principle

A realtime feature is not just “a normal fetch plus a socket.”

It usually has at least two different responsibilities:

1. acquire the **initial trustworthy snapshot**,
2. maintain **live continuity** over time.

Model them separately.

---

## Recommended state model

A robust feature usually distinguishes these states:

- `initialLoading`
- `ready`
- `refreshing`
- `reconnecting`
- `stale`
- `degraded`
- `disconnected`
- `error`

Not every feature needs all of them, but do not collapse all socket and snapshot behavior into one `loading/error/success` enum.

---

## Initial snapshot vs live events

### Initial snapshot

This step:

- fetches baseline content,
- builds initial sort order,
- seeds identifiers for dedupe,
- provides a render-safe starting point.

### Live event stream

This step:

- appends new items,
- updates existing items,
- may patch counts or status fields,
- may reconnect independently from snapshot validity.

Do not let stream lifecycle errors erase already-usable snapshot state by default.

---

## Dedupe strategy

Assume duplicates can happen.

Possible causes:

- server replay after reconnect,
- repeated subscription handshake,
- optimistic local events being echoed back,
- provider-side duplication.

Recommended tactics:

- prefer stable event ids,
- keep a bounded recent id set,
- dedupe before mutating visible collections,
- if no stable id exists, derive the best available content signature carefully.

---

## List growth management

Long-lived live sessions can grow forever if unmanaged.

Choose one:

- keep only the newest N items,
- archive older pages separately,
- compact older events into aggregates,
- maintain visible + historical partitions.

Never leave unbounded collections in a long-running session without intent.

---

## Auto-scroll rules

For live feed UIs:

- auto-scroll only when the user is already at or near the live edge,
- stop auto-scrolling when the user intentionally scrolls away,
- show a “new items” indicator instead of forcing position changes,
- preserve reading position during reconnects and non-structural updates.

---

## Reconnection behavior

A reconnect plan should define:

- retry timing,
- max retry policy,
- backoff strategy,
- whether snapshot refresh is needed after reconnect,
- what UI state is shown while reconnecting,
- when the session becomes stale or degraded.

Prefer explicit reconnection state over silent retries.

---

## Background and resume behavior

Mobile apps often pause or reduce activity in background.

Define:

- whether the stream disconnects on background,
- whether pending events are replayed on resume,
- whether a fresh snapshot is required after resume,
- whether staleness badges are shown until a refresh completes.

---

## Error separation

Keep these error classes distinct when possible:

- transport / connection errors,
- auth / session errors,
- domain validation errors,
- payload parsing errors,
- snapshot fetch failures.

They often require different recovery behavior.

---

## Recommended layering

- widgets render current state,
- presentation layer binds view state,
- feature controller/notifier owns stream lifecycle,
- repositories/services own provider communication,
- adapters normalize raw event payloads.

Do not open sockets directly inside widgets.

---

## Verification checklist

Verify at least the following:

- initial snapshot renders correctly,
- duplicate events do not create duplicate visible entries,
- reconnect does not erase valid visible state unnecessarily,
- new-event indicator works when user is away from the live edge,
- long sessions do not grow unbounded without strategy,
- background/resume behavior is deliberate,
- stream cleanup happens on disposal.
