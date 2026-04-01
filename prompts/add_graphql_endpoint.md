# Add GraphQL Endpoint or Schema Source

Introduce a new GraphQL endpoint or wire an existing Flutter project to a newly adopted GraphQL schema source.

## Goal

Create a stable and reviewable integration path for the endpoint, including schema fetch strategy, operation layout, generation strategy, and repository boundaries.

## Required work

- define where the endpoint configuration lives
- define how auth headers or environment variables are supplied
- fetch or document schema refresh behavior
- define the app-repo location for schema, operations, fragments, and generated output
- define code generation commands
- add at least one sample operation and one repository path that consumes it

## Constraints

- no secret values committed to the repo
- no operation documents hidden inside Dart strings if file-based documents are already supported
- no direct widget-to-client coupling
- no undocumented code generation command

## Output expectations

Return:

1. endpoint configuration touched
2. schema/codegen files added
3. sample operations added
4. verification commands
5. environment assumptions
