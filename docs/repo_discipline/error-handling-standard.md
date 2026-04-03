# Error Handling Standard

## Goal

Async features must fail in controlled and reviewable ways.

## Every async flow should define

- loading state
- success state
- empty state
- recoverable failure state
- non-recoverable failure state when relevant
- retry behavior
- telemetry/logging hook

## UX guidance

### Loading
Do not leave the user guessing.
Use skeletons, progressive disclosure, or explicit loading copy when appropriate.

### Empty
Empty is not an error.
Explain whether there is simply no data, no permission, no search result, or no connection.

### Failure
A failure message should answer:
- what failed,
- what the user can try next,
- and whether data may still be partially available.

### Retry
Retry must be intentional.
Do not infinite-loop failing requests.

## Technical guidance

- Normalize failures into a small set of app-facing states.
- Keep raw exceptions out of the widget tree.
- Map transport and parsing failures into reviewable app errors.
- Decide which failures are user-visible and which are telemetry-only.

## Release checklist

Before release, verify:
- offline-ish behavior where relevant
- timeout handling
- malformed payload resilience
- pagination edge cases
- cancelled request handling
