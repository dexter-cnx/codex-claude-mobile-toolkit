---
name: flutter-graphql-schema-codegen
description: Add or stabilize schema-driven GraphQL code generation in a Flutter project, including schema refresh flow, operation layout, generated artifact policy, and review-friendly commands.
allowed-tools: Read, Write, Edit, Grep, Glob, Bash
---

# Flutter GraphQL Schema Codegen

Use this skill when the project needs a disciplined schema-driven GraphQL setup instead of ad hoc manual response models.

## Use this skill when

- a new GraphQL endpoint is being adopted
- schema files and operation documents need a standard repo layout
- code generation commands should be reproducible
- generated artifacts are drifting or inconsistent
- PRs need clearer schema/codegen review boundaries

## Do not use this skill when

- the task is only UI work with no GraphQL document changes
- the project intentionally avoids code generation for a throwaway prototype
- generated files already exist and the real problem is repository or cache design

## Objectives

1. define where schema, operations, fragments, and generated output live
2. make schema refresh repeatable
3. make code generation repeatable
4. reduce handwritten duplication of response types
5. keep generated output reviewable and bounded
6. document the commands the team and CI should run

## Process

### 1. Audit the current GraphQL setup

Inspect:

- endpoint configuration
- schema file location if any
- operation document location if any
- generator configuration
- generated output location
- CI or scripts already in place

### 2. Define a stable repo layout

At minimum decide:

- where the tracked schema file lives
- where operation documents live
- where fragments live
- where generated output lands
- what is committed vs ignored

### 3. Document schema refresh flow

The team should be able to answer:

- how schema refresh is triggered
- what environment variables are required
- what command is used
- whether auth headers are needed
- how schema changes are reviewed

### 4. Document code generation flow

The team should be able to answer:

- what command runs codegen
- what tools are required
- how generated diffs are reviewed
- whether codegen is part of CI

### 5. Define mapper policy

Generated types reduce transport mistakes.
They do not remove the need for repository and mapper boundaries.

### 6. Verify the toolchain

At minimum verify:

- schema refresh command works or is correctly documented
- codegen command works or is correctly documented
- generated artifacts compile
- repository and mapper paths still compile after regeneration

## Output expectations

When applying this skill, produce:

1. chosen repo layout
2. schema refresh command and assumptions
3. codegen command and assumptions
4. generated artifact policy
5. verification results

## Anti-patterns

Avoid:

- undocumented schema refresh behavior
- generated files that are never refreshed
- handwritten DTOs that duplicate generated responses
- mixing unrelated feature operations into one monolithic document folder with no ownership

## References

Read these references before implementation:

- `references/layout.md`
- `references/schema-refresh.md`
- `references/generated-artifact-policy.md`
