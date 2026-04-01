# Cache Boundaries

Separate these concerns:

- GraphQL client cache for remote response reuse,
- app-owned local persistence for local-only state,
- UI state for transient rendering metadata.

Do not assume one layer should do the other's job.
