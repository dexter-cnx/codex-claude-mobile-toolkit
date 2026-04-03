# Flutter Skills Pack Maintenance Guide

## Purpose

Keep the skill pack useful, current, and small enough to remain maintainable.

## Maintenance checklist

### Monthly
- review whether any skill is unused or redundant
- verify package recommendations still match the toolkit's preferred stack
- update example prompts when workflow friction appears

### Before adding a new skill
- confirm the pattern appears in at least two projects or repeated tasks
- confirm the pattern is not already covered by a narrower extension to an existing skill
- define a clear primary owner and verification contract

### Before editing an existing skill
- preserve the skill name unless the rename is unavoidable
- keep the "use when" and "do not use when" sections explicit
- check routing docs and prompts for drift

## Preferred stack assumptions

This pack is tuned for:
- Flutter-first app delivery
- Material 3
- design tokens
- CSV-to-JSON localization source of truth
- either GetX or Riverpod depending on project lane
- verification as part of delivery, not an afterthought

## Anti-bloat rules

Do not add a skill for:
- one package only
- one screen only
- one-off experiments
- style preferences without delivery impact
- generic Flutter knowledge already covered elsewhere in the toolkit

