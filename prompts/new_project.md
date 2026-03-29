# New Project Prompt

Use this prompt when creating a new Flutter project from a blank or near-blank repo.

## Objective

Scaffold a Flutter project with pragmatic Clean Architecture.

## Required defaults

- Flutter app
- Material 3
- clear `presentation / domain / data` structure
- small reusable widgets
- loading / empty / error / success support
- localization ready
- networking ready
- test-friendly structure

## Preferred stack for the default template

- state management: repository-neutral by default
- router: repository-neutral by default
- networking: Dio
- localization: CSV-first workflow that can generate JSON locale files

## Deliverables

1. Proposed folder structure
2. Minimal bootstrap files
3. Theme and design tokens baseline
4. Networking baseline
5. Localization baseline
6. One sample feature slice
7. Brief explanation of the architecture decisions

## Guardrails

- Do not put business logic in widgets.
- Do not put API code in presentation.
- Do not over-engineer early abstractions.
- Keep generated code readable.

## Finish with

A coherence pass that checks:

- import direction
- layer boundaries
- route / registration gaps
- missing states
