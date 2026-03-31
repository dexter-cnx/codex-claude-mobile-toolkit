# Verification artifacts

This document defines the expected shape of task evidence.

## Why artifacts matter

Without artifacts, verification becomes invisible and easy to overstate.

Artifacts should make it easy for another contributor to answer:

- what changed,
- what was checked,
- what passed,
- what was not checked,
- what remains risky.

## Standard artifact types

### Verification report
Used after implementation, review, or finalize work.

### Audit report
Used after repository health audits.

### Root-cause analysis
Used during bug investigation.

### Improvement log
Used when refining the toolkit itself.

### Change summary
Used for concise handoff or PR preparation.

## Style rules

Artifacts should be:

- markdown first,
- concise but complete,
- explicit about evidence,
- explicit about unknowns,
- easy to paste into issues, PRs, or notes apps.

## Minimum sections

Most artifacts should include:

- scope
- evidence
- verification performed
- unresolved risks
- recommended next actions
