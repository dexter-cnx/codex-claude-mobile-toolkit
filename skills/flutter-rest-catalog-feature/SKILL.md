# Flutter REST Catalog Feature

## Purpose
Use this skill when implementing or refactoring a Flutter feature backed by a read-mostly REST API, especially for list/detail catalog experiences.

Good fits:
- movie catalog apps
- encyclopedia-style apps
- entity browsers
- public API demo apps intended to feel production-grade

## Inputs
You should know or inspect:
- the target feature
- relevant routes
- whether the feature is list, detail, search, favorites, recent, or related-resource browsing
- remote API endpoints involved
- local persistence mechanisms already present

## Workflow
1. Inspect repository conventions.
2. Identify the existing feature boundaries.
3. Define the user-facing states.
4. Define remote and local data sources.
5. Define or update DTOs and mappers.
6. Define or update repository contracts and implementations.
7. Wire Riverpod providers or notifiers.
8. Implement UI states including stale cached content if relevant.
9. Add or update tests.
10. Verify and summarize.

## Standard UI states
Every data-backed catalog screen should explicitly handle:
- loading
- success
- empty
- error
- stale cached content during refresh

## Data-flow preference
Prefer:
- cache-first for list and detail where it improves UX
- local persistence for favorites and recent items
- lazy loading for related resources

## Avoid
- eager loading all relationships on initial page load
- widget-level JSON knowledge
- DTO leakage into presentation
- hidden refresh behavior

## Output contract
When done, return:
1. what changed
2. why it changed
3. key files touched
4. cache behavior used
5. verification results
6. known limitations

## Verification
At minimum:
```bash
flutter analyze
flutter test
```

## Related assets
- `docs/rest-catalog-pattern.md`
- `prompts/new_catalog_feature.md`
- `templates/rest-catalog-audit.md`
- `skills/flutter-cache-first-rendering/`
- `skills/flutter-api-integration-pattern/`
