# Investigate Flutter Bug

## Goal

Perform structured root-cause analysis before applying a broad or speculative fix.

## Use when

- the cause is unclear,
- the symptom may cross multiple layers,
- previous fixes have been partial or unstable,
- the bug involves async timing, rebuild behavior, routing, caching, localization refresh, or platform edge cases.

## Inputs

- symptom description
- expected behavior
- observed behavior
- reproduction hints
- logs, stack traces, screenshots, or clips if available

## Inspect first

- failing screen or feature module
- recent related changes
- logs and stack traces
- route or provider wiring
- relevant tests
- platform files if the bug seems platform-specific

## Investigation flow

### 1. Define the symptom precisely
State what the user sees, what the app does, and what should happen instead.

### 2. Define reproduction steps
Prefer the smallest reliable reproduction path.

### 3. Isolate the likely layer
Classify the suspected location:

- UI composition
- state management
- domain logic
- repository or transport
- persistence
- routing
- localization
- platform or native boundary

### 4. Generate hypotheses
List the most likely causes without overcommitting too early.

### 5. Gather code evidence
Test the strongest hypotheses against actual code paths.

### 6. Identify the root cause or top probable causes
Be explicit when certainty is partial.

### 7. Define the smallest safe fix
Prefer the least invasive change that addresses the confirmed cause.

### 8. Define regression checks
State what should be verified after the fix.

### 9. Emit the investigation artifact
Use `templates/root-cause-analysis.md`.

## Required outputs

- symptom summary
- reproduction notes
- root-cause analysis
- proposed smallest safe fix
- regression checks
- confidence level
