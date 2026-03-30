# Skill: flutter-project-bootstrap

## Purpose
Design a new Flutter project from a blank folder with a practical app shell, maintainable feature layout, clear stack choices, and enough structure for near-term growth without over-engineering.

## When to use
- Starting a greenfield Flutter app
- Converting a blank folder or toolkit-only repo into a real project starter
- Preparing a bootstrap plan for Codex, Claude Code, or another coding agent to execute

## When not to use
- Making a tiny change inside an already structured repo
- Performing a deep refactor of an existing production app
- Generating every production file in one pass without requirements

## Required inputs
- product or app name
- platform targets
- state-management choice or allowed options
- router choice or existing constraint
- localization requirement
- networking/storage assumptions
- first 1-3 core features

## Optional inputs
- design system or branding constraints
- analytics/crash reporting requirements
- environment/flavor setup
- backend choice
- CI/CD constraints

## Decision rules
- Keep the bootstrap small but extensible.
- Define presentation, domain, and data boundaries only where they are justified.
- Include localization wiring early when the app is expected to support multiple locales.
- Prefer reusable app-shell decisions over speculative abstractions.
- Surface assumptions explicitly.

## Execution steps
1. Clarify the minimum viable app shell.
2. Choose stack defaults that match the project constraints.
3. Propose the initial folder tree and top-level packages.
4. Map the first set of features and cross-cutting modules.
5. Define routing, theming, localization, networking, and storage entry points.
6. Produce a bootstrap checklist and risks.

## Output contract
- project assumptions
- recommended stack
- folder tree
- package and dependency notes
- app-shell wiring plan
- first-feature layout
- acceptance checklist

## Acceptance checklist
- Folder tree supports growth without excessive nesting.
- State management and router decisions are explicit.
- Localization strategy is declared if multilingual support matters.
- Core app shell avoids business logic leaks.
- First features have a plausible place in the structure.

## Common failure modes
- Using a large enterprise skeleton for a tiny app.
- Leaving router, theme, and localization decisions implicit.
- Mixing feature code into global app files immediately.
- Adding repository/use case layers everywhere regardless of complexity.

## Escalation rules
Ask for clarification only when a missing choice would radically change the bootstrap. Otherwise make explicit assumptions.

## Example task
Bootstrap a Flutter app for a vehicle log product using GetX, Dio, CSV-based localization, and local-first storage.
