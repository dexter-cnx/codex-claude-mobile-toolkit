# Pokédex GraphQL Lane

## Purpose

This document shows how to apply the GraphQL lane in a concrete, high-signal example: a Pokédex-style Flutter app backed by a public GraphQL endpoint.

## Why this is a good fit

A Pokédex app typically has:

- a searchable list,
- detail pages,
- related entity traversal through evolutions,
- read-mostly behavior,
- optional local-only user state such as favorites or recently viewed,
- and a strong need for fast perceived performance.

That makes it an ideal reference case for:

- cache-first list/detail rendering,
- GraphQL operation design by screen,
- codegen-backed response handling,
- local-only overlay state,
- and explicit empty/error/stale-refresh UI.

## Recommended feature set

### MVP

- pokemon list
- search by name or number
- detail page
- attacks section
- evolution chain
- favorites
- recently viewed

### Good second wave

- compare two Pokémon
- filter by type
- offline snapshot of last successful list/detail
- saved team builder

## Recommended feature boundaries

A practical Pokédex project should separate features such as:

- `pokedex_list`
- `pokemon_detail`
- `favorites`
- `recent_history`
- `compare`
- `team_builder`

Do not put the entire app under one giant `pokemon` feature if the product is expected to grow.

## Example operation strategy

### List operation

Purpose:

- support list cards,
- lightweight search result rows,
- and fast cached render.

Avoid pulling heavy nested sections if they are not visible on the list screen.

### Detail operation

Purpose:

- fetch enough data for the detail header,
- type display,
- attacks,
- and evolution chain.

If one section is large or unstable, split it into a follow-up query rather than making the detail screen impossible to render when a secondary field fails.

### Compare operation

Purpose:

- fetch a compact shared selection for two or more Pokémon,
- present same-shape comparison rows.

## Local-only overlays

Recommended local persistence:

- favorite IDs,
- recently viewed IDs,
- saved compare pairs,
- saved team compositions.

Treat these as app-owned state, not GraphQL cache.

## UI-state expectations

### List screen

Should support:

- initial load,
- cached content while refreshing,
- empty results,
- network failure with preserved cached content,
- search query changes,
- favorite badge overlay.

### Detail screen

Should support:

- cached detail while refreshing,
- partial sections,
- missing evolution data without taking down the whole screen,
- retry only for the affected fetch path when practical,
- favorite toggle with immediate local feedback.

## Example repository responsibilities

### PokedexRepository

Should own:

- list query execution,
- search query execution,
- mapping list response to domain read models,
- caching or cache-aware reads,
- overlaying favorite state when requested.

### PokemonDetailRepository

Should own:

- detail query execution,
- mapping nested attacks and evolution chain,
- preserving cached detail on refresh failures,
- exposing stale/refresh metadata to the state layer.

## Verification checklist

At minimum verify:

- list query maps correctly,
- detail query maps correctly,
- nullable fields do not crash the detail page,
- favorites persist locally,
- cached list/detail render before remote refresh completes,
- stale refresh failures do not blank the page,
- generated GraphQL code is refreshed and committed when operations change.