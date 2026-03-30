# Testing Checklist

Use this checklist when adding cache-first rendering to an existing feature.

## Core tests

### Cache-first initial render

- cached snapshot exists
- notifier/controller initializes
- visible state is emitted before remote refresh completes

### Background refresh success

- cached state is visible
- refresh starts in background
- fresh payload arrives
- merged result is emitted
- merged result is saved to local storage

### Non-destructive refresh failure

- cached state is visible
- refresh fails
- visible content remains intact
- error is surfaced as refresh status rather than destructive empty/error body

### Pending mutation survives refresh

- cached state is visible
- user performs optimistic action
- remote refresh completes with older server truth
- merged visible state still reflects pending mutation

## Optional tests

- stale cache age threshold behavior
- pull-to-refresh while data already visible
- pagination interaction with cache-first state
- retry behavior after refresh failure
- mutation rollback or failed-sync marker behavior

## Review checklist

- widgets are not orchestrating cache reads/writes
- merge logic is testable outside widget tests
- refresh errors are non-destructive
- pending mutations are not cleared prematurely
- repository contract remains understandable
