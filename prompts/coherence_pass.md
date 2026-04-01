# Coherence Pass

Use this prompt after changing the toolkit itself.

The goal is to detect drift between rules, docs, prompts, templates, and memory conventions.

## Required behavior

Review the changed toolkit files and answer:

1. Did the new or changed files introduce overlap with existing capabilities?
2. Does routing guidance need to be updated?
3. Does the feature registry need a new or revised entry?
4. Does the runtime matrix need to change?
5. Do templates still match the prompts that emit them?
6. Do README links or onboarding flows need revision?
7. Did this change create a deprecation that should be documented?

## Output format

### 1. Change summary
### 2. Overlap or redundancy found
### 3. Routing updates needed
### 4. Registry updates needed
### 5. Runtime/documentation updates needed
### 6. Deprecations or migration notes
### 7. Recommended cleanup actions

