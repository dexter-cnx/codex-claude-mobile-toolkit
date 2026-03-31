# Audit Mobile Repo

## Goal

Assess the health of a Flutter/mobile repository using this toolkit's architecture, delivery, and verification standards.

## Use when

- the repo feels broad or inconsistent,
- a team wants a health snapshot before major work,
- architecture drift is suspected,
- the toolkit itself needs a structured review.

## Inputs

- repository root
- visible project structure
- current stack choices
- recent changes or recurring pain points if known

## Inspect first

- `README.md`
- `AGENTS.md`
- top-level project structure
- `pubspec.yaml`
- routing setup
- localization setup
- representative feature modules
- test directories
- platform folders if they exist

## Audit dimensions

### 1. Architecture boundaries
Check whether presentation, domain, and data responsibilities are staying coherent.

### 2. State management consistency
Check whether Riverpod usage is understandable, scoped, and consistent.

### 3. Routing consistency
Check whether go_router usage is centralized, readable, and not leaking into leaf widgets.

### 4. Localization pipeline quality
Check source-of-truth handling, generated outputs, and hardcoded text drift.

### 5. Data and integration hygiene
Check repository boundaries, DTO placement, transport isolation, and dependency shape.

### 6. Testing posture
Check whether tests exist at appropriate layers and whether verification expectations are realistic.

### 7. Platform and tooling health
Check scripts, platform config, build assumptions, and native-boundary clarity.

### 8. Stale code and drift signals
Check for duplicate patterns, dead assets, contradictory rules, or abandoned flows.

### 9. Delivery maturity
Check whether workflows, skills, and templates form a usable operating model.

## Output format

Use `templates/audit-report.md`.

Include:

- executive summary
- scorecard by dimension
- critical issues
- medium-priority improvements
- low-priority refinements
- suggested next workflows
