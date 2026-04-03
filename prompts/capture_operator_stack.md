# Capture operator stack

Use this prompt when you want the agent to turn an informal personal tooling setup into a repository-grade operator stack document.

## Goal

Produce a precise, reusable markdown document describing the operator stack around this repository.

## Required output

Return a markdown file with these sections:

1. Stack summary
2. Required repository-native layers
3. Optional companion tools
4. Role topology
5. Session topology
6. Branch and worktree conventions
7. Memory flow
8. Review and verification flow
9. Security and portability notes
10. Recommendations: adopt / defer / reject

## Requirements

- Keep repository-native components separate from external tools.
- Avoid turning preference tools into mandatory standards.
- Explain the problem each external tool solves.
- Include a fallback for every external dependency.
- Write in production-grade repo-doc style.
- Prefer durable conventions over personal taste.

## Inputs to inspect

- current repository structure
- current prompts
- current skills
- current docs
- any personal tooling list supplied by the user

## Decision rule

Recommend adoption only when the tool improves at least one of:
- session management
- reproducibility
- memory durability
- handoff quality
- verification quality

Otherwise classify it as personal preference.

## Output quality bar

The final document should be ready to commit under `docs/`.
