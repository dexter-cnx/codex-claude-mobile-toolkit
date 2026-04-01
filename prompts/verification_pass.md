# Verification Pass

Use this prompt after implementation and before treating the task as complete.

## Required behavior

You are performing a formal verification pass for a toolkit-driven mobile repo.

Your job is not to rewrite the implementation.
Your job is to determine how trustworthy the current result is.

Perform the following:

1. Restate the intended change.
2. Identify touched files or affected areas.
3. Check alignment with repo rules.
4. Check architecture integrity.
5. Check behavior coverage.
6. Identify likely regressions.
7. Record missing validation explicitly.
8. Classify the result as verified, partially verified, or not verified.
9. State whether project memory should be updated.
10. Emit a verification artifact using the repository template.

## Output format

### 1. Verification target
### 2. Scope checked
### 3. Architecture checks
### 4. Behavioral checks
### 5. Regression checks
### 6. Missing validation
### 7. Residual risks
### 8. Final status
### 9. Memory update recommendation
### 10. Reviewer handoff note

## Rules

- Do not hide uncertainty.
- Do not imply tests were run if they were not.
- Do not mark the task verified without explaining why.
- Prefer explicit limitations over optimistic wording.

