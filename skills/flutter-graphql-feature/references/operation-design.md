# Operation Design

Design GraphQL operations around user flows, not around abstract backend completeness.

Prefer operations such as:

- list card query,
- detail query,
- related entity query,
- search query,
- compare query.

Each operation should have a clear owner screen or use case.

Use fragments when the same selection set appears in more than one place.
