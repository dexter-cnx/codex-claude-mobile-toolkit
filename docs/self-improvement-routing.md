# Self-improvement routing

This document defines where reusable lessons should go after a task.

## Goal

Prevent repeated guidance from living only in chat transcripts or one-off notes.

## Routing table

### Update `AGENTS.md` when
The lesson is a durable repo-wide engineering rule.

Examples:

- new verification minimum
- clarified architecture boundary
- dependency selection policy
- stronger localization rule

### Update `CLAUDE.md` or `GROK.md` when
The lesson is specific to that agent surface.

Examples:

- routing nuance
- execution preference
- reporting behavior
- workflow selection wording

### Update `prompts/` when
The lesson changes an end-to-end flow.

Examples:

- finalize lane now includes localization review
- bug investigation now requires explicit reproduction notes
- repo audit now produces a scorecard section

### Update `skills/` when
The lesson describes a reusable narrow procedure.

Examples:

- add a new review skill
- split a bloated skill
- create a focused audit helper

### Update `templates/` when
The lesson is mainly about output structure.

Examples:

- verification report missing risk section
- audit report needs scorecard
- root-cause analysis needs evidence section

### Update `docs/` when
The lesson is explanatory rather than operational.

Examples:

- clarify pipeline vs skill distinction
- document why a lane exists
- write migration notes

### Update Antigravity when
The improvement affects a workflow that needs the stricter shell.

Examples:

- pipeline phase order changes
- artifact requirements change
- task template assumptions change

## Decision rules

- prefer editing an existing file first
- create a new file only when the pattern is reusable
- do not add new files for one-off cleanup lessons
- mirror only meaningful pipeline changes into Antigravity

## Output expectation

A self-improvement pass should end with:

- lesson summary
- destination file
- proposed change
- why that destination is the best fit
- optional follow-up if more than one asset should change
