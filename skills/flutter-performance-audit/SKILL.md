# Skill: flutter-performance-audit

## Purpose
Review Flutter performance issues and produce a targeted plan covering rebuild hotspots, async loading flows, rendering costs, scrolling behavior, caching, and measurement strategy.

## When to use
- A screen feels janky or slow
- The team wants a pre-release performance pass
- An app shows too many loading states or redundant rebuilds

## When not to use
- Guessing at performance without observable symptoms or a measurement plan
- Treating every problem as a rendering problem when data flow may be the issue

## Required inputs
- target screens or flows
- symptoms
- device class or platform concerns
- known performance constraints

## Optional inputs
- profile traces
- network conditions
- image-heavy screens
- caching approach

## Decision rules
- Look for measurable hotspots.
- Separate rendering cost from data-flow cost.
- Prefer targeted fixes over premature micro-optimization.
- Consider perceived performance as well as raw frame time.

## Execution steps
1. Identify the user-visible performance symptoms.
2. Map likely hotspots in rebuild, async flow, rendering, and scrolling.
3. Define a measurement or reproduction plan.
4. Recommend fixes ordered by impact and confidence.

## Output contract
- symptom summary
- suspected hotspots
- measurement plan
- remediation options
- prioritized fix list
- validation checklist

## Acceptance checklist
- The analysis distinguishes CPU, layout, build, network, and UX latency issues.
- Recommendations are traceable to symptoms.
- Fixes are prioritized.
- Validation steps exist.

## Common failure modes
- Blaming everything on setState or state management generically.
- Optimizing without measurement.
- Ignoring cache and loading-sequence issues.

## Escalation rules
If architectural coupling appears to drive the issues, link findings back to `flutter-existing-project-audit`.

## Example task
Audit a feed screen that flashes spinners too often, rebuilds large widget trees, and delays cached content display.
