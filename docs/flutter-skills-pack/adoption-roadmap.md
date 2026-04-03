# Flutter Skills Pack Adoption Roadmap

## Goal

Adopt the pack without turning the toolkit into an ungoverned pile of overlapping skills.

## Phase 1: core lane

Adopt these first:

- `flutter-architecting-apps`
- `flutter-building-layouts`
- `flutter-managing-state-getx`
- `flutter-managing-state-riverpod`
- `flutter-implementing-navigation-and-routing`
- `flutter-handling-http-and-json`
- `flutter-theming-material3-tokens`
- `flutter-localizing-apps-csv-json`
- `flutter-testing-apps-baseline`

### Exit criteria

- at least one real project has used the pack
- agents consistently pick the correct skill
- overlap with existing prompts is documented
- at least one example output has been reviewed

## Phase 2: data and UX hardening

Adopt next:

- `flutter-caching-data-offline-first`
- `flutter-working-with-databases`
- `flutter-building-forms`
- `flutter-accessibility`

### Exit criteria

- offline-first guidance has been validated
- form patterns are reused across projects
- accessibility checks appear in verification output

## Phase 3: advanced capabilities

Adopt last:

- `flutter-reducing-app-size`
- `flutter-handling-concurrency`
- `flutter-animating-apps`
- `flutter-native-interop`

### Exit criteria

- specialized skills are only used where justified
- performance and binary-size recommendations are measurable
- native interop guidance names clear ownership boundaries

## Governance rules

- no new skill without a repeated use case
- no skill that duplicates an existing prompt without a clear delta
- every skill must define when not to use it
- every skill must include a verification contract
- every skill should prefer narrow reusable procedure over generic advice

