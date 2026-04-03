# Bounded Refactor Prompt

Refactor only within the requested boundary.

## Rules

- do not expand scope beyond the stated boundary
- preserve existing architecture and patterns unless told otherwise
- avoid unrelated cleanup
- keep the change incremental and reviewable
- ask before making structural or cross-cutting decisions when confidence is below 95%

## Required workflow

1. Define the exact refactor boundary.
2. List the files that must change.
3. State any architectural assumptions.
4. Make the smallest coherent set of edits.
5. Run narrow verification.
6. Summarize what changed and what remains intentionally untouched.
