# Skill: Flutter Review and Coherence Pass

## Purpose
Use this skill after meaningful edits to keep a Flutter project coherent.

## Review checklist
### Architecture
- are file boundaries still reasonable?
- did the task introduce unnecessary abstraction?
- does repository logic stay outside widgets?

### State management
- are Riverpod providers scoped sensibly?
- is async state readable?
- did a feature create provider sprawl?

### Routing
- are route definitions still centralized?
- are route names and params clear?
- did navigation logic become scattered?

### Localization
- were new user-facing strings localized?
- was the CSV-first workflow respected?
- are generated locale assets still aligned?

### Persistence
- do Isar model changes match repository changes?
- are schema updates understandable?

### UX
- are empty/loading/error states still present where needed?
- did the new UI increase complexity unnecessarily?

## Output style
Be direct and implementation-oriented.
Group issues by severity and propose concrete fixes.
