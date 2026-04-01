# Repository Boundary

The repository should hide GraphQL client execution details from the rest of the feature.

It should own:

- choosing the right operation,
- mapping generated output,
- composing local-only overlays,
- and exposing clear refresh or cache behavior.

Widgets should not know how GraphQL transport, generated requests, or schema quirks work.
