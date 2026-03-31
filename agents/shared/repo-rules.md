# Shared Repo Rules

## Scope
These rules apply across Codex, Claude Code, Grok Code, OpenClaw, and Antigravity surfaces.

## Toolkit positioning
This repository is a toolkit layer. It is not a starter app and not a monolithic framework.

## Default stack assumptions
Unless a project explicitly says otherwise, prefer:
- Flutter
- Dart
- Riverpod
- go_router
- Dio
- Material 3
- CSV-first localization
- cache-first rendering where it improves UX

## Rule hierarchy
When multiple instruction sources exist, prefer this order:
1. direct user request
2. project-specific prompt or workflow
3. project root agent file
4. shared repo rules
5. skill-specific guidance

## Naming and structure
- use explicit filenames over clever names,
- keep prompts task-oriented,
- keep skills narrow and reusable,
- keep docs explanatory rather than imperative,
- keep templates output-oriented.

## Delivery baseline
Every meaningful task should produce:
- implementation changes,
- a concise explanation,
- verification results,
- known gaps if full validation was not possible.

## Prohibited behavior
- do not introduce large generic abstractions without a real consumer,
- do not hide verification failures,
- do not move fast by ignoring architecture boundaries,
- do not scatter the same policy across multiple root files when shared rules can own it.
