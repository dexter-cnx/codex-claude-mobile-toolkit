# Verification Workflow

This document defines how work should be verified before it is considered complete.

The goal is not to produce maximum ceremony.
The goal is to make changes reviewable, trustworthy, and resumable.

## Core rule

A task is not done merely because the code was written.

A task is done when:

- the intended change is implemented,
- the implementation respects repo rules,
- the expected behavior was checked,
- risks are stated clearly,
- and a reviewer can understand what was validated.

## Verification outcomes

Each task should end in one of three states.

### verified

The change was checked against the intended scope and no blocking issues remain.

### partially verified

Some checks were completed, but important limitations or missing validations remain.

### not verified

The implementation exists, but validation is missing or too weak to trust the result.

## Verification dimensions

### 1. Scope verification

Questions:

- Did the change actually address the requested outcome?
- Were acceptance criteria covered?
- Were non-goals respected?

### 2. Architecture verification

Questions:

- Does the change follow the repo's layering rules?
- Were boundaries preserved?
- Was technical debt introduced knowingly or accidentally?

### 3. Behavioral verification

Questions:

- Does the feature work in the intended scenario?
- Are loading, empty, error, and success states handled?
- Are edge cases acknowledged?

### 4. Regression verification

Questions:

- What could have been broken?
- Was that area checked?
- Are there known unverified regressions?

### 5. Delivery verification

Questions:

- Are docs/templates/artifacts updated where needed?
- Was project memory updated if durable decisions changed?
- Can another contributor continue from the current state?

## Required outputs

For meaningful changes, emit a written verification artifact.

Recommended templates:

- `templates/verification-report.md`
- `templates/artifact-verification-report.md`

At minimum, the report should include:

- scope checked,
- files affected,
- checks performed,
- findings,
- residual risks,
- and final status.

## Recommended task classes

### Small change

Examples:

- copy tweak,
- narrow bug fix,
- minor refactor with low blast radius.

Expected verification:

- targeted scope check,
- quick regression note,
- short written summary.

### Medium change

Examples:

- new screen state,
- data flow update,
- API integration change,
- navigation adjustment.

Expected verification:

- scope + architecture + behavior checks,
- artifact report,
- residual risks listed.

### Large change

Examples:

- subsystem migration,
- state management migration,
- large feature delivery lane,
- toolkit restructuring.

Expected verification:

- full verification artifact,
- explicit risk log,
- project memory update,
- handoff guidance.

## Recommended verification sequence

1. Re-state the intended outcome.
2. Identify touched files and likely blast radius.
3. Check architecture compliance.
4. Check expected behavior.
5. Check likely regressions.
6. Record any missing validation.
7. Decide final status.
8. Update memory if needed.

## Failure modes to watch for

Common weak verification patterns:

- "looks correct" without evidence,
- checking happy path only,
- not checking architecture drift,
- not recording known unknowns,
- treating lack of test execution as invisible instead of explicit,
- and forgetting to update docs or memory when semantics changed.

## Recommended prompt

Use `prompts/verification_pass.md` to run a standard verification pass.
