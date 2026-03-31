# flutter-component-contracts

## Purpose
Define reusable Flutter component contracts before or during UI implementation.

## When to use
Use this skill when:
- a screen is repeating similar UI blocks,
- a reusable widget should be introduced,
- props and state handling are becoming unclear,
- design review needs a component-level handoff.

## Inputs
- target screen or feature
- repeated UI patterns
- current reusable widget library if any
- theming rules
- interaction requirements

## Procedure
1. Identify repeated UI structures.
2. Decide which ones deserve abstraction.
3. For each reusable component, define:
   - responsibility,
   - public API,
   - required inputs,
   - optional inputs,
   - callback behavior,
   - loading / disabled / error variants,
   - localization expectations,
   - accessibility expectations.
4. Note whether the component should remain stateless or have a narrow internal state.
5. Describe composition boundaries and anti-patterns.

## Output contract
Use `templates/component-spec.md` where possible.

For each component, produce:
- name
- purpose
- props
- states
- composition notes
- accessibility notes
- test notes
- implementation caution notes

## Verification
Check that:
- the component contract maps to existing architecture,
- the abstraction reduces duplication instead of hiding logic,
- the proposed API is still understandable from the call site.
