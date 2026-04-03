# Mangayomi → Toolkit Integration Notes

## Goal

Turn the strongest reusable ideas from a large cross-platform Flutter content app into generic toolkit assets that work for:

- REST-backed apps
- GraphQL-backed apps
- CMS-driven apps
- local JSON or cache-backed catalogs
- sync-enabled browsing apps
- media and document libraries
- search-heavy content experiences

## Keep

- source adapter contracts
- browse/latest/search flow separation
- paged results with stable contracts
- filter schema abstraction
- restore-time rehydration pattern
- configurable rendering and user settings
- platform capability planning

## Do not copy directly

- manga/anime-specific terminology
- scraper-specific assumptions
- domain-specific provider logic
- runtime JS / eval as a default extension mechanism
- Rust bridge as a baseline requirement

## Toolkit placement strategy

### Docs
Use `docs/patterns/` for durable architecture ideas.

### Prompts
Use `prompts/` for agent-entry workflows and `prompts/patterns/` for narrower design prompts.

### Skills
Use `skills/` for reusable implementation procedures that are narrow enough to execute reliably.

### Templates
Use `templates/architecture/` for planning artifacts and `templates/examples/` for copyable reference code.

### Schemas
Use `schemas/` for machine-readable contracts that support generation, validation, and review.

## Recommended adoption order

1. add the adapter and pagination docs
2. add the filter schema and schema file
3. add the prompt and skill assets
4. adopt the templates in one pilot feature
5. only then fold the patterns into broader bootstrap flows

## Good first pilot feature

A catalog/search feature with:

- browse
- latest
- query search
- filters
- pagination
- local caching
- restore-safe identifiers

This gives the best signal about whether the overlay fits the toolkit's conventions.
