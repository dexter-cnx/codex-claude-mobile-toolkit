# Command Palette

## Definition

A summonable command surface that lets power users quickly search destinations, trigger actions, and jump across complex product space.

## Why it belongs in this toolkit

This toolkit is often used for:
- feature-dense internal apps
- Flutter web
- desktop tools
- agent consoles
- admin surfaces
- developer-facing tooling

Those surfaces benefit from a fast action layer that reduces navigation overhead.

## When to use

Use when the product has:
- many routes or destinations
- many repeat actions
- keyboard-heavy users
- web or desktop primary usage
- advanced operational workflows

## When not to use by default

Do not force this into:
- simple consumer mobile apps
- novice-only flows
- products with very few actions

## What it should include

A good command palette supports:
- route search
- action execution
- recent commands
- scoped filtering
- optional keyboard hints

## Toolkit policy

Treat this as an optional module, not a universal starter feature.

## Flutter implementation ideas

- Flutter web / desktop overlay with searchable actions
- typed command registry
- command groups by route, action, data, or diagnostics
- agent console action launcher

## Acceptance criteria

A feature using this pattern should let a reviewer answer:
- does it materially speed up repeat workflows?
- is there enough product complexity to justify it?
- does it coexist well with visible navigation?

## Pitfalls

Avoid:
- hiding core discoverability behind keyboard-only affordances
- making the palette the only way to access important actions
- shipping it before the information architecture is stable

