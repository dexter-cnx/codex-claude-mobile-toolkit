# flutter-source-adapter-pattern

## Purpose

Use this skill when a product feature must integrate multiple upstream providers behind one coherent app-facing interface.

Examples:

- multiple APIs for one catalog,
- provider migration without immediate backend consolidation,
- content aggregation,
- live source abstraction,
- search against different backends.

---

## When to use

Use this skill when any of the following are true:

- more than one provider can serve the same feature,
- providers use different transport or schema shapes,
- the UI should not know which provider produced the data,
- provider capability differences must be handled safely,
- pagination or error semantics differ across providers.

Do **not** use this skill for a single-provider feature unless the abstraction is clearly required for an in-progress migration.

---

## Design goals

- keep provider quirks out of domain and presentation layers,
- normalize what the product needs to behave consistently,
- expose genuine capability differences explicitly,
- keep adapters narrow and testable.

---

## Process

### 1. Define the domain contract first

Write the smallest useful repository or source contract for the feature.

### 2. Build a capability matrix

List which providers support which behaviors.

### 3. Keep provider models local to the adapter

Raw payloads should not escape the data layer.

### 4. Normalize pagination and errors

Use a stable internal shape even if providers differ.

### 5. Add provider-specific behavior only at the edges

Auth, signing, weird query semantics, and transport quirks belong in the adapter or transport layer.

---

## Verification checklist

Verify at least:

- provider mappings are correct,
- unsupported capabilities fail predictably,
- pagination behavior is coherent,
- provider-specific errors normalize correctly,
- no raw provider models leak to UI or domain layers.

---

## Expected outputs

1. repository/source contract,
2. capability matrix,
3. adapter boundary summary,
4. normalized pagination/error approach,
5. verification summary,
6. known limitations per provider.
