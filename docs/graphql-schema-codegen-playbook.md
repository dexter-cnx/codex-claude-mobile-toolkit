# GraphQL Schema and Code Generation Playbook

## Goal

Provide a stable, reviewable process for schema-driven GraphQL integration inside Flutter projects that consume this toolkit.

## Core policy

Generated code is acceptable.
Handwritten duplication of generated GraphQL response models is not.

Use code generation to reduce:

- schema drift risk,
- field-name mismatch bugs,
- nullability mistakes,
- duplicated DTOs,
- and operation/document inconsistency.

## Standard flow

1. Define the endpoint URL and headers strategy.
2. Fetch or refresh the schema into a tracked schema file.
3. Write operation documents and fragments.
4. Run code generation.
5. Review generated output size and naming.
6. Map generated output to domain entities or feature read models.
7. Verify repository behavior and UI-state behavior.

## Recommended tracked artifacts in an app repo

```text
graphql/
|- schema.graphql
|- operations/
|  |- pokemon_list.graphql
|  |- pokemon_detail.graphql
|  `- pokemon_compare.graphql
|- fragments/
|  |- pokemon_list_card.graphql
|  `- evolution_chain_node.graphql
`- generated/
```

This toolkit itself provides scripts and patterns, but **generated app artifacts belong in the consuming app repo**.

## Naming guidance

### Operations

Use explicit names tied to screen intent:

- `PokemonListQuery`
- `PokemonDetailQuery`
- `PokemonCompareQuery`
- `PokemonSearchQuery`

### Fragments

Use reusable UI or domain-oriented names:

- `PokemonListCardFragment`
- `PokemonDetailHeaderFragment`
- `PokemonAttackSummaryFragment`

### Generated output

Generated filenames should remain deterministic and discoverable. Avoid opaque custom naming conventions unless the whole workspace already depends on them.

## Schema refresh policy

Refresh schema when:

- the endpoint changes,
- a feature starts requesting new fields,
- codegen starts failing,
- or the backend team reports schema changes.

Do not refresh the schema casually in the middle of unrelated refactors. Treat schema refresh as a visible change in code review.

## Code review expectations for schema/codegen changes

A GraphQL-oriented PR should make it obvious:

- whether the schema changed,
- which operation documents changed,
- whether generated output was refreshed,
- and what app code depends on the changed fields.

## Mapper rule

Generated models are not a substitute for domain modeling.

Map generated output to domain entities or read models when:

- UI should remain stable despite schema churn,
- local-only state must be composed with remote data,
- or multiple backend shapes could eventually feed the same domain feature.

## Nullability rule

Do not erase nullability with unchecked assumptions.

Every nullable field used by the UI should have a deliberate handling path:

- display fallback,
- omit section,
- show placeholder,
- or elevate to feature error only when the screen is genuinely unusable.

## CI guidance

For app repos that consume this toolkit, prefer a CI step that verifies:

- schema file is present,
- code generation runs without error,
- no uncommitted generated diffs remain after codegen,
- repository and mapper tests still pass.

## Tooling flexibility

This toolkit does not hard-lock one package, but the chosen GraphQL client and generator should be documented at the app-repo level.

Examples of acceptable approaches:

- `graphql_flutter` with a codegen pipeline,
- `ferry` with generated request/response types,
- or another schema-driven setup with clear generation and review discipline.

The important part is not the exact package. The important part is having:

- explicit operation documents,
- reproducible generation,
- stable mappers,
- and reviewable cache behavior.