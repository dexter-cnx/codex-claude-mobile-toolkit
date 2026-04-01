# Pokédex GraphQL Feature Brief

## Goal

Deliver a production-grade Pokédex browsing experience in Flutter using a public GraphQL API.

## Suggested features

### MVP

- Pokémon list
- search by name or number
- detail page
- attacks section
- evolution chain
- favorites
- recently viewed

### Next wave

- compare Pokémon
- filter by type
- saved teams
- offline snapshot behavior

## Feature boundaries

### pokedex_list

Responsibilities:

- list loading
- search/filter
- cache-first list render
- favorite overlay in list cards

### pokemon_detail

Responsibilities:

- detail header
- type display
- attacks
- evolution chain
- stale-refresh state for detail view

### favorites

Responsibilities:

- local-only favorite state
- favorite list view
- favorite badge overlay

### compare

Responsibilities:

- choose compare targets
- fetch compact compare shape
- show side-by-side comparison rows

## Data-flow guidance

### List page

1. load cached list if useful
2. show immediately
3. refresh in background
4. preserve favorite overlay
5. keep visible content on refresh failure

### Detail page

1. load cached detail if present
2. show immediately
3. refresh in background
4. update attacks/evolutions as data arrives
5. preserve visible content if refresh fails

## Verification focus

- nullability in attacks or evolutions
- search result empty state
- favorite toggle persistence
- refresh failure behavior
- cache-first startup feel