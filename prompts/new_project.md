# New Project Bootstrap Prompt

Use `flutter-project-bootstrap` as the primary skill.

## Purpose

Use this prompt to scaffold a new project repository using this toolkit as the conventions and workflow layer.

## Inputs to collect

- project name
- product type
- target platforms
- state management choice
- routing choice
- localization strategy
- backend choice
- offline-first requirement
- local search requirement
- sync requirement
- export / backup requirement
- secure local data requirement

## Capability flags

- `offline_first`: true / false
- `local_search`: none / basic / fts
- `sync`: none / supabase / custom
- `export_backup`: none / basic / advanced
- `client_side_encryption`: none / basic / advanced

## Rules

- choose only the capability packs the project actually needs
- do not include note-specific workspace features unless the product asks for them
- prefer minimal initial dependencies
- keep root rules and project overlay rules separate
