name flutter-reducing-app-size
description Measures and reduces Flutter bundle size using practical, release-oriented decisions. Use when package size, download size, or startup footprint matters.
metadata model last_modified

toolkit/manual-curated
Fri, 03 Apr 2026 16:00:00 +0700

# Reducing Flutter App Size

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

Use this skill when package size affects shipping quality, install friction, or release constraints.

## Use when

- auditing release build size
- trimming dependencies
- reducing asset bloat
- reviewing fonts, icons, or native libraries
- preparing for app-store constraints or low-bandwidth users

## Do not use when

- the task is a functional feature unrelated to release footprint
- no release or size pressure exists and the repository has other priorities

## Required inputs

- target platforms
- current bundle reports if available
- dependency list
- asset inventory
- release constraints

## Deliverables

- size audit findings
- prioritized reductions
- tradeoff notes
- verification plan

## Workflow

1. Measure before changing.
2. Identify biggest contributors.
3. Remove or replace heavy dependencies.
4. Trim assets, fonts, and icons intentionally.
5. Re-measure after each meaningful change.
6. Document tradeoffs such as quality vs size.

## Guardrails

- Do not guess about size without measurement.
- Do not remove required assets without confirming impact.
- Prefer the highest-impact cuts first.
- Keep release behavior intact.

## Output contract

- measurement summary
- top contributors
- recommended changes
- post-change measurement plan

## Verification checklist

- baseline measurement exists
- changes target high-impact contributors
- app behavior remains correct
- post-change measurement confirms improvement

## Example request

“Audit Android release size and recommend the most effective cuts without breaking the feature set.”
