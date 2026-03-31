# Realtime Feature Delivery Workflow

Use this workflow when the feature is driven by live events, sockets, subscriptions, or continuously updating feeds.

## Goal

Deliver a realtime feature without collapsing connection lifecycle, snapshot loading, and live UI behavior into ad hoc widget logic.

---

## Step 1 — Define feature shape

Capture:

- feature goal,
- live transport type,
- initial snapshot requirement,
- target surfaces,
- upstream providers,
- session length expectations,
- UX expectations for live edge, reconnect, stale state, and disconnect state.

Artifacts:

- short task summary,
- state model sketch,
- risks list.

---

## Step 2 — Choose boundaries

Decide:

- where transport lifecycle lives,
- where event normalization lives,
- where dedupe lives,
- where growth control lives,
- where UI-specific behaviors such as auto-scroll live.

Route into supporting skills if needed:

- `flutter-source-adapter-pattern`
- `flutter-shared-core-multi-surface`
- `flutter-tv-ui-pattern`

Artifact:

- architecture note.

---

## Step 3 — Define state model

At minimum, decide whether the feature needs separate states for:

- initial loading,
- ready,
- refreshing,
- reconnecting,
- stale,
- degraded,
- disconnected,
- fatal error.

Artifact:

- state contract note.

---

## Step 4 — Implement initial snapshot path

Ensure the feature can render a trustworthy initial view before or alongside live updates.

Verify:

- empty state behavior,
- success state behavior,
- snapshot failure behavior,
- first meaningful paint behavior.

---

## Step 5 — Implement live continuation path

Add:

- stream connection lifecycle,
- reconnect policy,
- event normalization,
- dedupe,
- bounded growth,
- cleanup on dispose.

Verify:

- duplicate events do not duplicate visible state,
- reconnect preserves usable state when possible,
- live updates do not break user-controlled scrolling.

---

## Step 6 — Validate surface-specific UX

For touch surfaces:

- verify loading, reconnect, and new-item indicators.

For TV / focus surfaces:

- verify dynamic content does not steal focus,
- verify focus restoration around overlays and route changes.

Artifact:

- UX verification note.

---

## Step 7 — Run verification baseline

Unless impossible:

- `flutter pub get`
- `dart format .`
- `flutter analyze`
- `flutter test`

Then perform targeted feature validation for:

- snapshot load,
- live update,
- reconnect,
- degraded/disconnected state,
- background/resume if applicable.

Artifact:

- verification report.

---

## Step 8 — Report completion

Return:

1. what changed,
2. files changed,
3. assumptions,
4. verification performed,
5. unresolved risks,
6. follow-up recommendations.
