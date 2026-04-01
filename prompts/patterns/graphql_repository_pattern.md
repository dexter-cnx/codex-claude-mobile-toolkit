# GraphQL Repository Pattern

Use this pattern when a Flutter feature should consume GraphQL through a repository boundary rather than letting presentation talk directly to the GraphQL client.

## Objectives

- keep operation execution in the data layer
- keep generated artifacts close to the GraphQL boundary
- map generated output into stable domain or feature models
- make cache and refresh behavior explicit
- allow local-only overlays such as favorites and recent history

## Expected repository responsibilities

- choose the right operation for the user flow
- execute the request
- convert generated output to domain-safe models
- merge local-only overlays when needed
- surface cache/refresh metadata in a predictable way

## Anti-patterns

Avoid:

- query strings inside widgets
- direct use of generated response objects in random UI helpers
- one repository method that returns a dozen unrelated GraphQL shapes
- silent refresh behavior that cannot be tested
