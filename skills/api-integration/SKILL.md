# Skill: api-integration

## Purpose
Define maintainable API integration patterns for Flutter apps, including Dio client structure, DTO mapping, error handling, and repository boundaries.

## When to use
- Adding a new remote feature
- Refactoring network code
- Designing how API responses move through the data layer

## When not to use
- Placing API calls directly in widgets
- Treating raw JSON maps as domain models

## Required inputs
- endpoint or API domain
- auth considerations
- error behaviors
- caching expectations

## Optional inputs
- retry policy
- pagination
- offline fallback
- interceptors

## Decision rules
- Networking belongs in data.
- Map transport objects into app-facing models explicitly.
- Surface errors in a way presentation can reason about.
- Keep clients composable and testable.

## Execution steps
1. Define endpoint grouping and client responsibilities.
2. Design DTOs and mapper boundaries.
3. Define repository interfaces and error models.
4. Specify pagination, retry, and auth handling if relevant.

## Output contract
- api layer plan
- dto and mapper notes
- repository boundary
- error-handling contract
- test considerations
- acceptance checklist

## Acceptance checklist
- No raw transport leakage into presentation.
- Error states are representable.
- Pagination/auth/retry behavior is explicit where needed.
- The plan is testable.

## Common failure modes
- JSON parsing in screens.
- One god-service handling every endpoint.
- Returning null everywhere instead of explicit failure types.

## Escalation rules
If the existing network layer is deeply entangled with UI, pair with `flutter-existing-project-audit`.

## Example task
Design API integration for a paginated vehicle history feed using Dio, DTO mappers, and repository abstraction.
