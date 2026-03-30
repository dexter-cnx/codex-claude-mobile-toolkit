# Token Architecture

Use a 3-tier token model:

1. Primitive
2. Semantic
3. Component

## Goal

Prevent components from depending directly on raw palette and spacing values when semantic meaning already exists.

## Example

- primitive: `blue.600`
- semantic: `action.primary`
- component: `button.primary.background`

## Flutter implication

- raw JSON or constants define primitive values
- theme layer maps semantic values
- reusable widgets consume semantic or component tokens
