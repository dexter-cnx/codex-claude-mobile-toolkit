# Filter Schema Pattern

## Purpose

Represent searchable filter controls as data instead of hard-coding every filter widget directly into a screen.

This pattern allows:

- dynamic search forms
- adapter-specific filter translation
- persisted filter state
- agent-assisted generation
- easier testing and review

## Design goals

- one neutral schema for UI and domain
- predictable mapping from filter state to request params
- explicit defaults
- safe serialization
- portable across sources

## Recommended model

A filter schema contains:

- `schemaVersion`
- `featureId`
- `groups`
- `fields`

Each field should define:

- `id`
- `type`
- `label`
- `defaultValue`
- `options` when relevant
- validation rules
- persistence behavior
- request-mapping hints

## Field types

Recommended baseline field types:

- `text`
- `select`
- `multi_select`
- `checkbox`
- `tri_state`
- `sort`
- `range`
- `date_range`
- `header`
- `separator`

## Example state rules

- `text` → string
- `select` → single string or enum value
- `multi_select` → list of string values
- `checkbox` → bool
- `tri_state` → `include | exclude | ignore`
- `sort` → `{ field, direction }`
- `range` → `{ min, max }`

## UI mapping rule

The screen should render controls from schema metadata and bind updates to a typed filter state object or a serialized state map.

Do not let UI rendering invent ad hoc field semantics.

## Adapter translation rule

The adapter should translate neutral filter state into provider-specific request params.

Example:

- UI state: `sort = { field: "updatedAt", direction: "desc" }`
- Source A: `sort=latest`
- Source B: `orderBy=updated_at&direction=DESC`

The translation belongs in the adapter layer, not in the screen.

## Persistence rule

Persist only normalized filter state, not widget instances.

Recommended persisted envelope:

```json
{
  "schemaVersion": 1,
  "featureId": "catalog.search",
  "state": {
    "query": "flutter",
    "sort": { "field": "updatedAt", "direction": "desc" },
    "nsfw": "ignore",
    "tags": ["mobile", "ai"]
  }
}
```

## Default-state rule

Provide explicit defaults for every user-editable field.

The default state should match the feature's intended initial content experience as closely as possible.

## Validation

Validation should run in one place before adapter execution.

Useful checks:

- invalid enum values
- range min > max
- too many selected tags
- unsupported sort combinations
- empty text after normalization
- stale schema version mismatch

## Verification checklist

- schema renders without hand-coded filter branching
- persisted state restores cleanly
- invalid state fails gracefully
- adapter mapping is covered by tests
- defaults match the intended browse screen
