# Design Review Rubric

## Purpose

Use this rubric when reviewing Flutter screens or reusable widgets.

## Categories

### 1. UX clarity
Check:
- is the primary action obvious
- is the information hierarchy clear
- are empty and error states understandable
- are destructive actions explained clearly

### 2. Visual consistency
Check:
- token usage consistency
- spacing rhythm
- typography consistency
- repeated patterns using shared components

### 3. State completeness
Check:
- default
- loading
- empty
- error
- success
- disabled
- selected
- focused

Not every component needs every state, but omissions should be intentional.

### 4. Accessibility
Check:
- semantics
- focus visibility
- tap target quality
- text scaling resilience
- error message clarity

### 5. Architecture boundary quality
Check:
- business logic not buried in widgets
- widgets receive view-ready state
- shared widgets remain feature-agnostic where practical
- pages compose rather than becoming giant monoliths

## Reporting format

Return:
1. what is working
2. risks
3. severity
4. recommended fixes
5. suggested refactor order
