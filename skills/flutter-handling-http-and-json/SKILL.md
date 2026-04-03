name flutter-handling-http-and-json
description Implements HTTP integration, DTO mapping, error translation, and repository-ready remote data flow for toolkit-aligned Flutter apps. Use when integrating REST APIs.
metadata model last_modified

toolkit/manual-curated
Fri, 03 Apr 2026 16:00:00 +0700

# Handling HTTP and JSON with Dio and Mappers

## Contents

  * Purpose
  * Use when
  * Do not use when
  * Required inputs
  * Deliverables
  * Workflow
  * Guardrails
  * Output contract
  * Verification checklist
  * Example request

## Purpose

Use this skill to connect Flutter applications to remote APIs in a way that is stable, testable, and easy to evolve.

## Use when

- adding a new REST endpoint
- mapping JSON to DTOs and domain entities
- introducing authenticated requests
- handling pagination, filtering, or retry
- translating transport errors into app-level failures

## Do not use when

- the task is local-only persistence
- the task is navigation or UI-only
- the feature already has a complete remote pipeline and only a small UI change is needed

## Required inputs

- endpoint contract
- auth rules
- response examples
- error shapes
- pagination behavior
- repository and domain expectations

## Deliverables

- client or service integration
- DTOs and serializers
- mappers into domain objects where needed
- repository-facing remote methods
- error mapping policy
- verification plan

## Workflow

1. Confirm endpoint contract and parameters.
2. Define request/response DTOs.
3. Centralize HTTP client configuration.
4. Keep mapping out of widgets.
5. Translate remote errors into app-friendly failures.
6. Integrate pagination and retry intentionally.
7. Ensure tests cover mapping and error behavior where practical.

## Guardrails

- Do not parse raw JSON in widgets.
- Do not expose transport-layer models as your stable domain contract unless justified.
- Keep authentication refresh logic centralized.
- Do not swallow API errors without a user-visible recovery path.
- Keep repository interfaces stable even when transport details change.

## Output contract

- endpoint summary
- DTO and mapper plan
- repository integration notes
- failure handling plan
- verification checklist

## Verification checklist

- request and response models align with contract
- JSON parsing is centralized
- remote errors are translated consistently
- loading, success, empty, and failure paths are reachable
- tests cover key mapping paths where practical

## Example request

“Integrate the search endpoint with Dio, map paginated results into domain entities, and expose failures cleanly to the feature layer.”
