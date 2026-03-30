# Workflow: Localization Update

## Use when
Adding or updating user-facing strings using the toolkit's CSV-first localization flow.

## Steps
1. Inspect localization conventions.
2. Update the source CSV.
3. Export runtime locale JSON files.
4. Replace hardcoded strings in changed UI.
5. Verify that keys resolve correctly.
6. Run analyze/tests.
7. Produce artifacts.

## Required verification
- CSV updated
- JSON export generated successfully
- `flutter analyze`
- targeted smoke check on affected screens
