# TV UI and 10-Foot UX Guidelines for Flutter

Use this guide when building for Android TV or any non-touch interface where the user primarily relies on:

- D-pad,
- remote control,
- keyboard arrows,
- focus-based navigation.

---

## Core principle

A TV interface is not just a phone UI enlarged.

It needs deliberate focus behavior, stronger layout hierarchy, clearer grouping, and more forgiving movement paths.

---

## Must-have rules

- Focus must always be visible.
- The user must be able to predict where focus will move.
- Primary actions must be reachable without hidden gesture knowledge.
- Large text and distance readability matter.
- Focus restoration after overlays and route changes should be intentional.

---

## Layout guidance

Prefer:

- larger cards,
- stronger section grouping,
- side rails or clear top-level navigation,
- fewer simultaneous interaction targets per viewport,
- clear spatial hierarchy.

Avoid:

- dense phone-style toolbars,
- small chips as primary navigation,
- hidden swipe affordances,
- tiny secondary actions packed around a card.

---

## Focus graph guidance

Treat focus traversal as a graph, not an accident.

For each primary screen, define:

- initial focus target,
- left/right/up/down expectations,
- wrap vs clamp behavior,
- focus restoration target after returning from detail pages,
- focus recovery when content disappears.

---

## Dialogs and overlays

When opening dialogs or panels:

- move focus into the dialog intentionally,
- trap focus appropriately while the dialog is active,
- restore focus to the previous meaningful element when closing,
- ensure dismiss actions are discoverable by remote.

---

## Live content considerations

For TV surfaces with live feeds or dynamic content:

- avoid focus jumps caused by list reordering,
- pin or preserve the focused item when safe,
- separate background refresh from focus movement,
- avoid auto-scroll that steals control from the user.

---

## Accessibility considerations

- provide semantic labels for icon-only actions,
- maintain strong contrast,
- preserve visible focus ring or focus treatment,
- avoid relying on hover assumptions,
- ensure critical state is not shown by color alone.

---

## Verification checklist

Verify at least:

- app launch has an intentional first focus target,
- all primary navigation regions are reachable by D-pad,
- dialogs restore focus correctly,
- route changes restore a sensible target,
- dynamic content does not steal focus unexpectedly,
- critical flows are usable without touch.

---

## Rule of thumb

Design for confidence at distance.
