# Toolkit Core vs Project Overlay

## Purpose
This document explains how to split responsibilities between the shared toolkit repo and a specific project repo.

## Toolkit core
Put a rule or document in the toolkit core when it is reusable across many Flutter projects.

Examples:
- Riverpod organization rules
- go_router route structure rules
- CSV-first localization workflow
- Isar schema evolution guidance
- architecture review checklist
- generic project scaffold prompt
- generic feature prompt

## Project overlay
Put a rule or document in a project overlay when it belongs to one product or one domain.

Examples:
- product positioning
- domain entity names
- app-specific UX loops
- built-in templates unique to the app
- product-specific feature priorities
- copywriting and store language

## Rule of thumb
Ask this question:

**Would this still make sense unchanged in three different Flutter apps?**

- If yes, it probably belongs in the toolkit core.
- If no, it probably belongs in the project overlay.

## Recommended layering
1. toolkit core provides conventions, prompts, skills, and examples
2. project overlay provides product-specific instructions and domain rules
3. agents read both, but the project overlay wins when there is a direct conflict

## Example
A shared toolkit might define:
- use Riverpod
- use go_router
- use CSV-first localization

A project overlay might define:
- this app is a smart personal lists app
- these are the core entities
- this is the expected user loop

Both are useful, but they serve different scopes.
