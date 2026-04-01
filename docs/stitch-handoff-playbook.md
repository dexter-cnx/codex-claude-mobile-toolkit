# Stitch Handoff Playbook

Use this guide when design work begins in Google Stitch or another AI-assisted design workflow and must be handed off into an implementation repo.

## Objective

Convert design exploration into implementation-ready context without losing intent.

## Required outputs from design handoff

- screen list
- user flows
- state variants
- component inventory
- design tokens or token candidates
- navigation assumptions
- unresolved questions

## Handoff sequence

1. Capture broad app intent.
2. Refine screen by screen.
3. Normalize repeated patterns into components.
4. Extract token candidates.
5. Create implementation notes.
6. Open a project workflow prompt.
7. Verify nothing visual hides a product rule.

## Common failure modes

- accepting beautiful screens without state coverage
- copying visual design without navigation logic
- missing loading, empty, error, and permission states
- failing to turn repeated patterns into reusable widgets
