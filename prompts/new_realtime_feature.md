# New Realtime Feature Delivery Prompt

Use this prompt when implementing or planning a realtime, stream-driven, or append-style feature in a Flutter-first product repository.

## Inputs to collect

Before implementation, gather or decide:

- feature goal
- live transport type: WebSocket / SSE / polling bridge / provider subscription / other
- whether an initial snapshot is required
- expected update frequency
- expected maximum session length
- whether optimistic local actions exist
- whether the user needs live-edge auto-scroll behavior
- whether the feature must work on multiple surfaces such as mobile + TV
- whether there are multiple providers or upstreams
- what offline or cache behavior should exist when the connection drops

## Capability checklist

Before implementation, answer:

- Does the feature need both **initial snapshot** and **live continuation**?
- What is the dedupe key for incoming events?
- What is the list growth strategy for long sessions?
- What should happen when the user scrolls away from the live edge?
- What should reconnect UI look like?
- What counts as `stale`, `degraded`, or `disconnected`?
- Does background/resume require a fresh snapshot?
- Are there provider capability differences that require `flutter-source-adapter-pattern`?
- Does a TV or remote-driven surface require `flutter-tv-ui-pattern`?
- Does a shared package boundary require `flutter-shared-core-multi-surface`?

## Routing guidance

Use the following when appropriate:

- realtime lifecycle and stream state  
  → `skills/flutter-realtime-feature-pattern/`

- multiple providers or source normalization  
  → `skills/flutter-source-adapter-pattern/`

- multiple app surfaces  
  → `skills/flutter-shared-core-multi-surface/`

- TV / D-pad navigation  
  → `skills/flutter-tv-ui-pattern/`

- cached content first render  
  → `skills/flutter-cache-first-rendering/`

- runtime scheduling or isolate concerns  
  → `skills/flutter-event-loop-audit/`

## Required outputs

The resulting implementation or plan should include:

1. state model,
2. connection lifecycle plan,
3. dedupe strategy,
4. list growth strategy,
5. live-edge and auto-scroll behavior,
6. reconnect behavior,
7. verification plan,
8. unresolved risks.
