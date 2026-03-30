# Skill: obsidian-doc-writer

## Purpose
Generate repository-friendly markdown documents for summaries, architecture notes, decision logs, migration plans, and implementation reports in an Obsidian-friendly structure.

## When to use
- The team needs clear written documentation inside the repo
- A conversation needs to be turned into durable markdown
- Architecture or migration decisions should be recorded

## When not to use
- Producing generic essays with no repository value
- Writing docs disconnected from actual implementation concerns

## Required inputs
- document purpose
- audience
- scope
- key decisions or findings

## Optional inputs
- frontmatter needs
- linking conventions
- section preferences

## Decision rules
- Write for future reuse.
- Prefer headings, concise rationale, and action-oriented sections.
- Keep markdown easy to paste into a repo or vault.
- Reflect uncertainty honestly.

## Execution steps
1. Define the document type and audience.
2. Choose an Obsidian-friendly outline.
3. Write concise sections with decisions, rationale, and next steps.
4. Add action items or follow-up docs when useful.

## Output contract
- document outline
- markdown body
- decision summary
- follow-up suggestions

## Acceptance checklist
- The document is easy to scan.
- Decisions and rationale are explicit.
- The structure is suitable for Obsidian or repo docs.
- The content is grounded in the actual task.

## Common failure modes
- Writing long narrative prose with weak information density.
- No audience or purpose.
- Mixing tentative thoughts with final decisions without labels.

## Escalation rules
If the document depends on unresolved technical choices, note them clearly as open questions.

## Example task
Turn a repo audit into an Obsidian-friendly markdown report with findings, severity, quick wins, and migration phases.
