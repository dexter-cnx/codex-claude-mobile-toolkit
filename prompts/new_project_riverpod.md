# prompts/new_project_riverpod.md

You are working in a Flutter project that uses this toolkit. Read `AGENTS.md` first and follow it strictly.

## Goal

Scaffold or refresh a Flutter project foundation using the default toolkit preset:

- Riverpod
- go_router
- Isar
- easy_localization
- CSV-first localization source of truth
- Material 3

## Required workflow

1. inspect the current project before editing
2. identify whether this is a brand new app or a retrofit
3. scaffold only the missing foundation pieces
4. keep routing, theme, bootstrap, and localization setup easy to find
5. add CSV-first localization artifacts if they do not exist yet
6. verify with the lightest useful commands available
7. end with a short coherence review against `AGENTS.md`

## Minimum expected outputs

- app bootstrap path
- centralized router
- root Riverpod wiring
- Material 3 theme location
- starter localization CSV
- `scripts/generate_i18n.dart`
- generated locale JSON files

## Constraints

- do not invent alternate stack choices unless the user requests them
- do not add domain boilerplate where it does not help
- do not keep localization truth in multiple hand-maintained files
- prefer maintainable defaults over clever abstractions
