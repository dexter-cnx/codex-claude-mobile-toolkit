# Backup, Restore, and Rehydration Pattern

## Problem

Feature backups often store only minimal records because full cached metadata is too large, too volatile, or too source-specific.

After restore, the app still needs a deterministic way to rebuild missing details.

## Pattern

### Backup phase
Persist only durable fields:

- source ID
- stable item ID
- title or display label
- selected user metadata
- timestamps
- optional lightweight thumbnail URL

### Restore phase
Restore minimal records immediately so the user sees something.

### Rehydration phase
Queue follow-up detail refreshes to repopulate:

- description
- categories
- chapters/pages/items
- provider-specific metadata
- remote availability state
- cover/media variants

## Recommended state transitions

- `restored_minimal`
- `rehydrating`
- `ready`
- `rehydration_failed`

## Rules

- restore must not block on full detail requests
- the item should stay identifiable without rehydration
- rehydration should be idempotent
- failures should not destroy restored user data
- detail refresh should update stale cached records safely

## Suggested queue policy

- foreground priority for visible items
- background batch for remaining items
- retry with backoff for transient network failures
- mark terminal failures explicitly

## Verification checklist

- imported records display immediately
- stable IDs survive export/import
- detail refresh repopulates missing fields
- duplicate restore does not corrupt local state
- failed rehydration remains recoverable
