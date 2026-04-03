# Plan Flutter Feature With Skill Router

Use this prompt when starting a Flutter feature or refactor inside a repository that includes the Flutter skills pack.

## Prompt

You are working inside a Flutter-first toolkit repository.

Follow this workflow exactly:

1. Read `AGENTS.md` first.
2. Read `core/routing/flutter-skill-routing.md`.
3. Choose one primary Flutter skill from `skills/`.
4. Choose up to two supporting Flutter skills only if the task crosses concerns.
5. Before proposing code, produce:
   - primary skill
   - supporting skills
   - assumptions
   - impacted layers
   - expected files
   - verification plan
6. Then use the chosen skills as the implementation contract.
7. Keep architecture boundaries strict.
8. Prefer minimal, production-grade changes over broad churn.
9. End with a concise verification summary and any unresolved risks.

## Additional constraints

- Never mix GetX and Riverpod in the same feature unless the repository already does so intentionally.
- Keep localization keys sourced from CSV-driven generation where that policy exists.
- Keep UI state, business rules, and data access separated.
- Require tests or explicit justification when tests are not possible.

