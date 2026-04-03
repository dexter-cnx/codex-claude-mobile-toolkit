---
name: flutter-art-direction
description: Use when a Flutter or mobile UI needs stronger visual direction, clearer design-token guidance, higher-quality screen composition, or a Stitch-ready design brief. Best for screen planning, refinement, review, and design-system alignment before or during implementation.
---

# Flutter Art Direction

This skill helps the agent move from vague styling requests to a deliberate, implementation-ready visual direction for Flutter/mobile work.

It is for:
- new screen design
- design refreshes
- pre-implementation screen planning
- component refinement
- design-review passes
- Google Stitch handoff preparation
- token and theming alignment

It is **not** for random beautification or undirected decoration.

## Primary objective

Produce a design direction that is:
- distinctive
- coherent
- buildable in Flutter
- compatible with Material 3 and token-based systems
- grounded in mobile usability

## Workflow

### 1. Clarify the product intent

Identify:
- primary task
- target user posture
- frequency of use
- trust level required
- visual density needs
- accessibility constraints

### 2. Commit to a visual stance

Choose a clear direction instead of averaging everything together.

Examples:
- quiet premium utility
- energetic card-driven consumer UI
- compact pro dashboard
- editorial content-first reading UI
- playful but disciplined family-facing UI
- low-distraction operational console

Avoid "generic startup gradient app" aesthetics.

### 3. Translate the stance into mobile decisions

Define:
- color roles
- elevation strategy
- typography hierarchy
- corner-radius policy
- icon style
- spacing rhythm
- list/card density
- empty-state treatment
- motion posture
- emphasis rules

### 4. Convert the design into implementation guidance

Always express the result in buildable terms:
- token recommendations
- widget composition guidance
- component states
- dark-mode implications
- a11y concerns
- risky implementation details

## Output format

When used, prefer this structure:

1. **Design intent**
2. **Visual direction**
3. **Token guidance**
4. **Component guidance**
5. **Interaction and motion**
6. **Accessibility notes**
7. **Implementation notes for Flutter**
8. **Optional Stitch handoff notes**

## Strong guidance

- Favor one memorable design choice over many weak ones.
- Use asymmetry, density, negative space, or strong hierarchy intentionally.
- Keep visual ambition, but do not sacrifice touch targets, readability, or navigation clarity.
- Every recommendation should be convertible into tokens, widgets, or layout rules.
- When discussing fonts, prioritize realistic mobile-safe pairings or explain where custom font loading is required.
- Always account for light and dark surfaces.
- Tie design choices back to the product's job, not only appearance.

## Anti-patterns

Do not:
- produce a vague "modern clean" direction with no specifics
- recommend trendy gradients by default
- over-round every component
- create visually noisy screens that weaken task completion
- describe aesthetics without mapping them to Flutter implementation
- treat design as separate from state, content, and interaction

## Good companion assets

Pair well with:
- `prompts/design/mobile_ui_art_direction.md`
- `templates/ux/mobile_theme_brief.template.md`
- design-system or component-contract documents
