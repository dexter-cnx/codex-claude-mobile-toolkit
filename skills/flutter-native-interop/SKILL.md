name flutter-native-interop
description Implements platform channels, native SDK integration, native views, plugins, or home-screen widgets with explicit ownership boundaries. Use when Flutter must reach beyond Dart-only APIs.
metadata model last_modified

toolkit/manual-curated
Fri, 03 Apr 2026 16:00:00 +0700

# Flutter Native Interop and Platform Capabilities

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

Use this skill when a feature must integrate Android, iOS, macOS, or web-native capabilities that Flutter does not expose directly in the current stack.

## Use when

- integrating a native SDK
- adding method channels or event channels
- embedding native views
- creating app widgets or shortcuts
- wrapping platform behavior inside a reusable plugin

## Do not use when

- a stable Flutter package already solves the need cleanly
- the task is purely Dart-side
- the repository cannot support platform-specific maintenance

## Required inputs

- target platforms
- native capability required
- ownership of native code
- package/plugin expectations
- testing and maintenance constraints

## Deliverables

- interop boundary design
- platform responsibilities
- Dart API surface
- lifecycle and error handling notes
- verification plan

## Workflow

1. Confirm there is a genuine native requirement.
2. Define the Dart-facing contract first.
3. Keep platform-specific logic isolated.
4. Align permission, lifecycle, and error handling across platforms.
5. Document unsupported platforms explicitly.

## Guardrails

- Do not leak platform-specific details all over the Dart layer.
- Prefer stable packages before custom native code.
- Keep platform feature support explicit.
- Document maintenance ownership for native code.

## Output contract

- interop contract
- per-platform responsibilities
- unsupported cases
- verification plan

## Verification checklist

- the Dart API surface is coherent
- platform responsibilities are isolated
- permissions and lifecycle behavior are documented
- unsupported platforms are explicit
- manual test coverage exists for each supported platform

## Example request

“Wrap this native SDK behind a clean Dart API and document platform-specific setup and unsupported platforms.”
