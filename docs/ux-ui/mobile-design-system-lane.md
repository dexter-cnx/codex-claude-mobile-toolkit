# Mobile design-system lane

This lane provides a production-oriented UX/UI layer for Flutter app delivery.

It exists to prevent a common failure mode:

> the code compiles, but the screen still feels inconsistent, fragile, or unready for real users.

## What this lane covers

- screen objectives
- action hierarchy
- state matrix
- component contracts
- token guidance
- accessibility review
- design handoff artifacts

## What this lane does not do

- replace product design entirely
- replace Figma or formal design review
- optimize for web-only design patterns that do not map well to Flutter mobile apps

## Recommended assets

### Planning and design prompts
- `prompts/new_screen.md`
- `prompts/improve_existing_ui.md`
- `prompts/generate_design_tokens.md`
- `prompts/review_flutter_ui.md`

### Skills
- `skills/flutter-ux-ui-design-system/`
- `skills/flutter-component-contracts/`
- `skills/flutter-design-review/`
- `skills/flutter-accessibility-audit/`

### Templates
- `templates/component-spec.md`
- `templates/design-handoff.md`
- `templates/ux-audit-report.md`

### Token docs
- `tokens/README.md`

## Review stance

Every meaningful screen should have explicit thinking about:

- purpose,
- primary action,
- content priority,
- empty and error behavior,
- loading and refresh behavior,
- offline or stale-data behavior when relevant,
- small-screen resilience,
- localization stress,
- accessibility impact.

## Why this matters

This toolkit is Flutter-first.  
Design outputs are only useful when they can be converted into maintainable screen architecture and reusable components.
