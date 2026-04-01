# GraphQL Feature Architecture Template

## Goal

Describe how a GraphQL-backed Flutter feature should be implemented in a way that remains maintainable after the initial integration.

## Feature scope

- Feature name:
- Primary screens:
- Related screens:
- Read-mostly or write-heavy:

## Data sources

- GraphQL endpoint:
- Local persistence used:
- Other sources:

## Operation design

- Fragments:
- List/search query:
- Detail query:
- Related entity query:
- Compare query if relevant:

## Code generation

- Schema file location:
- Operation document location:
- Generated artifact location:
- Codegen command:

## Architecture boundaries

### Presentation

- state objects:
- pages/widgets:
- navigation entrypoints:

### Domain

- entities:
- repository contracts:
- use cases:

### Data

- GraphQL client boundary:
- generated artifacts:
- mappers:
- repository implementations:
- local overlay composition:

## Cache strategy

- list behavior:
- detail behavior:
- stale-refresh behavior:
- refresh-failure behavior:
- local-only overlay behavior:

## UI states

- loading:
- success:
- empty:
- error:
- stale cached content while refreshing:
- partial sections:

## Verification

- operation/codegen verification:
- mapper verification:
- repository verification:
- UI-state verification:
- manual scenarios:
