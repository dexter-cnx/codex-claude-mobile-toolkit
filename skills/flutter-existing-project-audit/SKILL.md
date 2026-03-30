# Skill: flutter-existing-project-audit

## Purpose
Audit an existing Flutter project and produce a practical, prioritized report covering architecture drift, code-ownership boundaries, state management, localization, performance risk, and testing gaps.

## When to use
- A repo has grown messy and needs a review
- A team wants a refactor plan before adding more features
- An inherited project needs structured findings before changes begin

## When not to use
- Writing a greenfield architecture proposal
- Recommending a full rewrite without evidence
- Performing only superficial lint-level checks

## Required inputs
- project context
- current stack choices
- pain points or symptoms
- main modules or screens under concern

## Optional inputs
- release pressure
- team bandwidth
- areas that must not change yet
- known bugs

## Decision rules
- Distinguish symptoms from root causes.
- Separate findings from recommendations.
- Use severity and effort levels.
- Favor incremental migration over rewrite-first advice.
- Call out evidence for major claims.

## Execution steps
1. Capture project context and constraints.
2. Inspect structure, boundaries, state handling, and cross-cutting systems.
3. Group findings by domain.
4. Assign severity and likely impact.
5. Recommend quick wins and deeper refactors separately.
6. Produce a phased plan.

## Output contract
- context and assumptions
- findings by category
- severity and effort matrix
- quick wins
- deep refactor opportunities
- phased migration plan
- acceptance criteria for improvement

## Acceptance checklist
- Findings are actionable.
- Severity reflects user or team impact.
- Recommendations are bounded and realistic.
- Root causes are identified where possible.
- The plan is usable by a real team under constraints.

## Common failure modes
- Confusing style preferences with structural issues.
- Calling for a rewrite because the repo is imperfect.
- Mixing observations and solutions into one blur.
- Ignoring stack or team constraints.

## Escalation rules
If the project has severe performance symptoms, pair with `flutter-performance-audit`. If localization is a major pain point, pair with `flutter-localization-csv`.

## Example task
Audit a Flutter app where navigation, API parsing, and UI state are tightly coupled and produce a staged refactor plan.
