# New Feature Prompt

Use this prompt when adding a feature to an existing Flutter codebase.

## Objective

Implement one feature using pragmatic Clean Architecture while fitting the existing repo conventions.

## Required process

1. Inspect neighboring feature modules.
2. Infer the project patterns that are already in use.
3. Generate the minimum complete feature slice.
4. Keep widgets composition-focused.
5. End with a coherence pass.

## Minimum feature slice

- domain entity
- repository contract
- use case(s)
- data source(s)
- DTO / model(s)
- mapper(s)
- repository implementation
- state holder / controller / notifier / provider according to repo convention
- page and supporting widgets
- loading / empty / error / success states

## Guardrails

- No HTTP calls in widgets
- No JSON parsing in widgets
- No DTO leakage into presentation
- No unnecessary generic abstraction
- Do not rewrite unrelated features

## Finish with

List:

- files added
- files changed
- assumptions
- any follow-up cleanup still worth doing
