# Review Mobile Change

## Goal

Run a structured review pass on a Flutter/mobile change before or instead of a full finalize lane.

## Use when

- the change is ready for review but not necessarily merge-ready,
- a teammate wants a structured second pass,
- the task needs explicit findings without the full finalize workflow.

## Inputs

- task summary
- changed files
- intended outcome
- verification already performed

## Inspect first

- changed files
- nearest related tests
- relevant rules from `AGENTS.md`
- relevant feature, routing, localization, or platform files

## Review dimensions

### 1. Correctness
Does the change appear to solve the stated problem?

### 2. Architecture fit
Does the change respect expected layer boundaries?

### 3. UX and state completeness
Were loading, empty, error, and success states considered?

### 4. Localization correctness
Is user-facing text handled correctly?

### 5. Testing and verification posture
Is the evidence strong enough for the size of the change?

### 6. Platform safety
Did any platform or native-boundary concerns arise?

### 7. Maintainability
Is the change understandable and proportionate?

## Outputs

- findings
- strengths
- risks
- requested follow-ups
- verification expectations
- readiness assessment
