name flutter-implementing-navigation-and-routing
description Implements routing, guarded navigation, nested flows, and deep links for toolkit-aligned Flutter apps. Use when user movement between screens is the dominant concern.
metadata model last_modified

toolkit/manual-curated
Fri, 03 Apr 2026 16:00:00 +0700

# Implementing Navigation and Routing

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

Use this skill when the core task is how users move through the application.

## Use when

- adding or changing routes
- introducing nested navigation
- implementing auth guards or onboarding gates
- supporting deep links or web URL sync
- restructuring flows such as tabs, shell routes, or detail stacks

## Do not use when

- the task is mostly widget composition
- the task is mostly data mapping or repository work
- the route layer already exists and only a screen internals change is needed

## Required inputs

- route map
- auth or guard rules
- current routing package and conventions
- expected deep links
- entry points from notifications or external links
- platform targets

## Deliverables

- route inventory
- route ownership and parameters
- guard behavior
- redirection rules
- error or unknown-route handling

## Workflow

1. List the user journeys.
2. Define each route and its parameters.
3. Implement guard and redirect logic centrally.
4. Keep route names or paths stable and predictable.
5. Separate navigation policy from widget internals.
6. Document deep-link expectations where applicable.

## Guardrails

- Do not scatter navigation decisions across random widgets.
- Do not hide required route parameters.
- Ensure back-stack behavior is intentional.
- Keep auth and onboarding redirects deterministic.
- Support web URLs cleanly when the project targets web.

## Output contract

- route table
- parameter contracts
- guard rules
- navigation risks
- verification plan

## Verification checklist

- all routes are discoverable and named consistently
- required parameters are explicit
- unknown-route handling exists where needed
- guarded flows redirect correctly
- back navigation works as expected
- deep links resolve to the correct state

## Example request

“Add authenticated shell routing with a public login flow, protected tabs, and deep links into a detail page.”
