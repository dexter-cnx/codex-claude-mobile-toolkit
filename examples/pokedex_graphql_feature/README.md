# Pokédex GraphQL Feature Example

This example pack is a planning and architecture reference for building a Pokédex-style Flutter feature using the toolkit's GraphQL lane.

It is intentionally documentation-first rather than a full runnable sample so it can be copied into multiple app repos without forcing package choices too early.

## What this example demonstrates

- how to split list, detail, favorites, and compare concerns
- how to define GraphQL operations by screen intent
- how to keep local-only user state separate from remote data
- how to model cache-first list/detail UX
- how to structure a feature brief before implementation

## Suggested use

1. read `feature_brief.md`
2. copy the relevant sections into your app repo's feature design note
3. use `prompts/new_graphql_feature.md`
4. apply `skills/flutter-graphql-feature/`
5. use the audit and architecture templates during implementation review