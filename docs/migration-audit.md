# Migration Audit

This file records the intended migration from the original lightweight toolkit structure into a more workflow-first, preset-driven, plugin-style toolkit.

## Categories used during migration
Each existing file or concept should be classified as one of the following:
- **generic reusable** — valid across many Flutter repos
- **stack-specific reusable** — reusable when a project adopts the default preset
- **project-specific** — belongs in an app repo, not in the shared toolkit
- **sample only** — useful as an example, not a required convention
- **outdated or overlapping** — should be merged, renamed, or archived

## What belongs in the shared toolkit
The shared toolkit should own:
- workflow-first operating model
- shared architecture conventions
- default stack preset rules
- CSV-first localization guidance
- generic scaffold prompts
- generic feature prompts
- generic review/coherence workflows
- persistence evolution guidance
- plugin-style packaging examples

## What belongs in project overlays
A project repo should own:
- product identity and positioning
- domain-specific language and entities
- app-specific UX rules
- feature priorities and roadmap
- product-specific prompts that reuse the toolkit conventions

## Migration outcome target
After migration, the toolkit should act as:
- a reusable conventions layer
- a reusable prompt layer
- a reusable skill layer
- a starter plugin-style metadata layer

Project repos should then consume the toolkit and add product-specific overlays on top.
