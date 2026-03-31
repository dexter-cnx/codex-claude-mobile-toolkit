# flutter-tv-ui-pattern

## Purpose

Use this skill when implementing or reviewing Flutter interfaces for Android TV or any focus-driven, non-touch surface.

Examples:

- Android TV apps,
- set-top box UIs,
- kiosk or keyboard-driven UIs,
- remote-controlled dashboard surfaces.

---

## When to use

Use this skill when:

- D-pad or keyboard navigation is primary,
- focus traversal matters,
- the user may interact from a distance,
- a live or dynamic UI must avoid stealing focus.

Do **not** use this skill for standard touch-only phone screens unless a screen is explicitly designed to also support keyboard/focus navigation.

---

## Design goals

- maintain visible and predictable focus,
- make primary actions discoverable without gestures,
- structure layouts for distance readability,
- avoid dynamic-content focus disruption.

---

## Process

### 1. Define the focus graph

For each screen, decide:

- first focus target,
- movement rules,
- wrap/clamp behavior,
- route return focus,
- dialog focus behavior.

### 2. Validate layout for distance

Prefer larger targets, clearer grouping, and simpler top-level navigation.

### 3. Make focus restoration explicit

Dialogs, drawers, overlays, and details should return focus to a meaningful element.

### 4. Guard against dynamic-content focus theft

Realtime and lazy-loaded UIs must not unexpectedly shift focus.

---

## Verification checklist

Verify at least:

- launch focus target is correct,
- all primary flows are reachable by D-pad,
- overlays trap and restore focus correctly,
- route changes restore a sensible target,
- dynamic content does not steal focus,
- the screen remains usable without touch.

---

## Expected outputs

1. focus behavior summary,
2. layout/interaction notes,
3. verification summary,
4. remaining risks.
