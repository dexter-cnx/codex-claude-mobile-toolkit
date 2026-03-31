# Flutter Offline-First

## Purpose

This skill helps implement Flutter features that must remain useful without a network connection and should treat local persistence as the primary runtime source of truth.

## Best-fit use cases

- note or document apps
- vehicle or maintenance logs
- journaling
- field capture forms
- personal inventory
- travel or checklist apps

## Operating rules

1. Save locally first.
2. Keep sync state separate from domain state.
3. Make sync optional unless the product clearly requires it.
4. Preserve a clean separation between UI, domain, and data.
5. Expose non-happy states explicitly.
