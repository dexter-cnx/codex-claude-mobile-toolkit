# New screen prompt

Design and implement a Flutter screen that is production-oriented, not just visually acceptable.

## Goal
Define a screen that has:
- a clear purpose,
- explicit state handling,
- reusable components where justified,
- token-aware styling,
- and a maintainable Flutter structure.

## Inspect first
- `README.md`
- `AGENTS.md`
- relevant feature folders
- theming files
- routing files
- existing component library
- localization files

## Required output
Produce:
1. screen objective
2. user flows and primary action
3. state matrix: loading, empty, error, success, refreshing, offline or stale if relevant
4. proposed widget/component structure
5. Riverpod/provider responsibilities if stateful
6. localization keys likely needed
7. design-token guidance
8. implementation notes
9. verification notes

## Constraints
- match the existing app architecture
- prefer reuse over duplicate widgets
- do not invent a web-style pattern that maps poorly to mobile
- respect small screens and long localized strings
