# flutter-content-source-adapter

## Purpose

Use this skill when a Flutter app needs a reusable adapter layer for browse/latest/search/detail flows across one or more content providers.

## Read first

- `AGENTS.md`
- `docs/patterns/source-adapter-pattern.md`
- `docs/patterns/filter-schema-pattern.md`

## Inputs expected

- feature goal
- provider count
- pagination mode
- state management approach
- cache expectations
- backup / restore expectations

## Responsibilities

- define adapter contracts
- define paged result contract
- define stable ID strategy
- place provider mapping in data layer
- prevent presentation coupling to provider params
- produce verification notes

## Output contract

- domain interface design
- concrete file plan
- repository strategy
- filter translation notes
- tests to add
- known risks

## Verification

- page reset behavior is correct on new query
- next page merges deterministically
- detail refresh uses stable ID
- adapter failure types are normalized
