# Layout

Use a predictable and reviewable layout for GraphQL assets.

A common shape is:

```text
graphql/
|- schema.graphql
|- operations/
|- fragments/
`- generated/
```

If the app is feature-first, operation documents can live inside feature-owned folders as long as codegen remains reproducible and discoverable.