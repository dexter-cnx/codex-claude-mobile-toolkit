# Rules Verification Checklist

Use this after adding or updating a rules file.

## Installation
- [ ] Correct adapter file copied to the location expected by the tool
- [ ] Old conflicting rules files removed or reconciled
- [ ] One project profile merged if the repo needs it
- [ ] Optional task pack added only when relevant

## Behavioral checks
- [ ] The assistant preserves the repo's current architecture
- [ ] The assistant stops leaking DTOs into UI/domain
- [ ] The assistant avoids broad rewrites for small requests
- [ ] The assistant proposes affected files before coding when appropriate
- [ ] The assistant adds tests for meaningful new behavior or regressions

## Flutter-specific checks
- [ ] Material 3 remains the default unless the repo says otherwise
- [ ] Localization workflow is respected
- [ ] User-facing strings are not hard-coded in localized features
- [ ] Design tokens are preferred over repeated raw values
- [ ] Widgets stay reasonably small and composable

## Toolkit-specific checks
- [ ] `presentation / domain / data` boundaries remain clear
- [ ] Project profile matches actual stack choice
- [ ] Task pack matches current task type
- [ ] Dependency additions are justified
- [ ] Output remains review-friendly and production-oriented

## Maintenance checks
- [ ] `flutter_master_rules.md` updated when core policy changes
- [ ] Compact variants updated after master changes
- [ ] Tool-specific adapters remain synchronized with the master intent
