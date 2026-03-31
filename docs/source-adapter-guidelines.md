# Source Adapter Guidelines

Use this guide when one feature must integrate multiple upstream providers behind one product-facing interface.

Examples:

- multiple content APIs,
- multiple marketplace or catalog providers,
- multiple live sources,
- a mix of REST, GraphQL, and stream providers,
- a future migration period where old and new backends coexist.

---

## Goal

The user should experience one coherent feature.

Provider quirks should be normalized inside the data layer as much as practical, while genuine capability differences should remain explicit rather than hidden.

---

## Recommended layers

```text
domain/
  entities/
  repository_contracts/
  use_cases/

data/
  adapters/
    provider_a/
    provider_b/
  dto/
  mappers/
  repositories/
```

---

## Contract first

Start by defining the smallest product-facing contract that supports the feature.

Typical contract questions:

- what does the feature need to read?
- what does it need to mutate?
- what pagination model does the feature want?
- what failure modes matter to the product?
- which fields are required vs optional vs provider-specific?

Do not begin with raw provider models.

---

## Capability matrix

Not every provider supports the same things.

Document a capability matrix such as:

| Capability | Provider A | Provider B | Provider C |
|---|---:|---:|---:|
| search | yes | yes | no |
| comments | yes | no | yes |
| live updates | yes | partial | yes |
| rich media | full | partial | partial |

Then use explicit capability checks or feature flags.

Do not assume all providers can emulate the strongest provider.

---

## Normalization guidance

Normalize these whenever possible:

- ids,
- timestamps,
- pagination envelopes,
- error categories,
- content state enums,
- basic metadata fields.

Keep these provider-specific when necessary:

- provider-only metrics,
- provider-only capabilities,
- transport or signature requirements,
- unsupported actions.

---

## Pagination normalization

If providers differ, normalize to one internal shape.

Common internal shape:

```text
items: List<T>
nextPageToken: String?
hasMore: bool
```

Provider-specific page numbers, cursors, or offset values should remain inside the adapter.

---

## Error normalization

Map raw provider errors into a small product-facing set, for example:

- unauthorized,
- forbidden,
- rateLimited,
- notFound,
- unsupported,
- transportFailure,
- invalidPayload,
- unknown.

Keep the raw provider error for logs and diagnostics, but do not leak it into product code by default.

---

## Testing strategy

At minimum, verify:

- provider mapping correctness,
- pagination continuity,
- unsupported capability behavior,
- fallback behavior when one provider fails,
- no raw provider models leak outside the adapter boundary.

---

## Common mistakes

- using raw provider JSON directly in widgets,
- making the domain model mirror one provider's schema,
- hiding missing provider capabilities and failing later in the UI,
- mixing provider-specific auth/signature logic with repositories used by the rest of the app,
- duplicating pagination logic in multiple layers.

---

## Rule of thumb

Normalize what the product needs to feel coherent.
Expose what the product needs to know is genuinely different.
