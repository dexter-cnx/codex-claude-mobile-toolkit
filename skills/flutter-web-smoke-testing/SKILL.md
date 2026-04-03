---
name: flutter-web-smoke-testing
description: Use when verifying a Flutter web build or local web surface with Playwright. Best for smoke checks, rendered-state inspection, selector discovery, screenshot capture, console inspection, and reproducible pre-merge verification.
---

# Flutter Web Smoke Testing

This skill defines a practical smoke-testing loop for Flutter web and adjacent local web surfaces.

## Purpose

Verify the app from the outside:
- load the app
- wait for the rendered state
- inspect visible UI
- capture evidence
- exercise a few high-value interactions
- document failures clearly

## Operating model

Treat helpers and launch scripts as black boxes where possible.

Prefer:
- running the app
- waiting for stable render
- discovering selectors from the rendered output
- testing the most valuable flows first

Avoid bloating context with large helper scripts unless customization is required.

## Recommended loop

### 1. Launch
Start the target app or local server using the lightest reliable method.

### 2. Stabilize
Do not inspect immediately.
Wait until the app has settled enough for meaningful inspection.

### 3. Recon
Capture:
- screenshot
- page title
- visible headings/buttons
- console errors if available

### 4. Exercise
Run a small set of high-value checks:
- first screen renders
- key CTA is present
- primary navigation is reachable
- one representative state transition works
- no obvious blocking console failures

### 5. Record
Produce a concise verification note with:
- what was tested
- what passed
- what failed
- screenshots or evidence paths
- next action

## Specific guidance for Flutter web

- Be patient with startup and hydration.
- Expect semantic selectors to be weaker than hand-authored HTML in some builds.
- Use visible text and stable landmarks where possible.
- If selectors are fragile, prefer evidence-oriented smoke checks over brittle deep automation.
- If a flow is clearly dynamic, inspect after the UI settles, not before.

## Output expectations

Always end with:
- verdict
- blockers
- reproduction notes
- evidence summary

## Anti-patterns

Do not:
- inspect too early
- write massive brittle scripts for a simple smoke test
- confuse smoke testing with full E2E coverage
- declare success without evidence
