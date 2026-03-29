# Conventions

## Naming

- Prefer feature-first folders.
- Keep file names predictable.
- Use names that reflect business meaning.

## Widget design

- Screens compose.
- Subwidgets render focused concerns.
- Avoid giant build methods.

## State handling

Every user-facing async screen should consider:

- loading
- empty
- error
- success

## Localization

- CSV is the source of truth.
- Generated JSON is runtime output.
