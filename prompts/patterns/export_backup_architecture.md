# Export and Backup Architecture Pattern

Use this prompt when a Flutter feature or app stores user data that should be exportable, restorable, or backed up.

## Goal

Design or implement a clean export/backup layer that:
- is not UI-bound,
- supports explicit formats,
- handles validation and restore safely,
- is understandable to users.

## Design rules

- Export and restore logic belong in services or repositories, not widgets.
- Version formats where feasible.
- Validate payloads before applying destructive restores.
- Communicate clearly whether restore merges, replaces, or duplicates data.
