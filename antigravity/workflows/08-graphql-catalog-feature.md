# GraphQL Catalog Feature Workflow

## Goal

Deliver a read-mostly GraphQL-backed catalog feature with clean boundaries, code generation discipline, cache-aware UX, and verification artifacts.

## Steps

1. confirm the feature boundary and target screens
2. inspect the GraphQL schema and existing operation documents
3. define or revise operation documents and fragments
4. refresh schema or code generation if required
5. implement or update repository and mapper boundaries
6. wire state and UI with explicit loading, empty, error, and stale-refresh behavior
7. verify mapper, repository, and UI-state paths
8. emit a feature report using `antigravity/artifacts/graphql-catalog-feature-report.md`
