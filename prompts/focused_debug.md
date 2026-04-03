# Focused Debug Prompt

Debug this issue using a low-context workflow.

## Constraints

- inspect only files directly related to the bug
- do not expand into refactoring unless required to fix the issue
- keep terminal output bounded
- summarize findings instead of dumping raw output
- stop and ask if confidence is below 95%

## Required workflow

1. Restate the bug in one or two sentences.
2. Identify the likely files, modules, or layers involved.
3. Reproduce with the smallest possible command or test.
4. Inspect only the relevant code path.
5. Propose the minimal fix.
6. Verify with a targeted test or command.
7. Return a short summary: root cause, fix, verification, remaining risk.
