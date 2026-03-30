# Skill Authoring Guide

Every skill should be small enough to discover quickly and rich enough to guide a real task.

## Required SKILL.md sections
1. Purpose
2. When to use
3. When not to use
4. Required inputs
5. Optional inputs
6. Decision rules
7. Execution steps
8. Output contract
9. Acceptance checklist
10. Common failure modes
11. Escalation rules
12. Example tasks

## Authoring rules
- Be task-specific.
- Reuse `core/` rules instead of restating every principle.
- Define outputs in a way another engineer could review.
- Include both technical checks and product-facing checks when relevant.
- Avoid vague advice like "follow best practices".

## Good output contracts
A good output contract typically includes some combination of:
- file tree
- files to create or edit
- route changes
- entities, DTOs, or state objects
- localization keys
- test plan
- acceptance criteria
- migration notes

## Examples of good skill boundaries
- good: scaffold a feature
- good: audit an existing project
- good: build localization pipeline from csv
- weak: handle all Flutter development
- weak: improve architecture somehow

## Versioning approach
When changing a skill significantly:
- update the skill examples
- update linked prompts
- update root agent routing if task mapping changed
- note compatibility assumptions inside the skill
