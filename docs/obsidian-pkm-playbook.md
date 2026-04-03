# Obsidian PKM playbook for agent-driven projects

This playbook defines how to use Obsidian-style notes without weakening repository-native memory.

## Core rule

Obsidian is an acceleration layer.
The repository remains the source of truth for project memory that affects implementation.

## What belongs in repository memory

Always store in repo:
- architecture decisions
- feature status
- migration notes
- verification summaries
- constraints that affect future work
- integration contracts

## What can live in Obsidian first

Can begin externally, then be normalized into repo:
- exploration notes
- research captures
- reading notes
- rough decision framing
- cross-project synthesis
- personal operator checklists

## Recommended vault structure

- `00 Inbox/`
- `10 Research/`
- `20 Project Notes/`
- `30 Decisions/`
- `40 Handoffs/`
- `50 Reusable Patterns/`

## Normalization flow

1. Capture idea or observation in notes.
2. Refine it into a project-scoped note.
3. Decide whether it changes implementation behavior.
4. If yes, promote it into repository memory or docs.
5. Link the repository file back into the note graph.

## Note types

### Research note
Purpose:
- summarize source material
- extract patterns
- identify adoption candidates

### Decision note
Purpose:
- record why one path was chosen
- preserve rejected alternatives
- define implications

### Handoff note
Purpose:
- preserve current state for the next lane or next day
- keep open questions searchable

### Pattern note
Purpose:
- promote a solution into reusable toolkit knowledge

## Metadata convention

Use frontmatter like:

```yaml
type: decision
project: codex-claude-mobile-toolkit
status: active
owner: operator
related_repo_paths:
  - docs/
  - project_memory/
review_after: 2026-06-01
```

## Promotion checklist

Promote a note into the repository when any of the following becomes true:
- it changes coding behavior
- it changes architecture
- it affects prompt or skill selection
- it affects verification
- it would confuse a future contributor if omitted

## Linking rule

Every promoted note should point to:
- the repository file that became canonical
- the feature or subsystem it affects
- the follow-up action, if unresolved

## Common mistake

Do not let excellent notes stay private when they carry implementation consequences.
A smart vault with weak repository memory still produces avoidable rework.
