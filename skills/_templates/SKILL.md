# <skill-name>

## Purpose
Briefly describe the single job this skill is meant to do.

## When to use
Use this skill when:
- condition 1
- condition 2
- condition 3

## When not to use
Do not use this skill when:
- unrelated scenario 1
- unrelated scenario 2
- a narrower or more appropriate skill already exists

## Inputs expected
List the minimum required inputs.

Example:
- target feature name
- target package/module path
- current architecture constraints
- localization requirements
- output expectations

## Files to inspect first
List the files or directories the agent should read before editing.

Example:
- `AGENTS.md`
- `pubspec.yaml`
- `lib/app/`
- `lib/features/<feature>/`
- related localization files
- test files for the target feature

## Preconditions
State assumptions that should already be true.

Example:
- Flutter project already exists
- Riverpod is already configured
- go_router is already configured
- localization pipeline is already present

## Steps
Write a concise, ordered procedure.

1. Inspect the relevant project rules and feature structure.
2. Identify the exact boundary for this skill.
3. Create or update only the files needed for this job.
4. Keep presentation, domain, and data concerns separated.
5. Reuse existing patterns before introducing new abstractions.
6. Update tests or verification hooks as needed.

## Verification
Define the exact checks that should be run.

Minimum example:
- `flutter pub get`
- `dart format .`
- `flutter analyze`
- `flutter test`

Optional example:
- targeted widget test
- smoke run for affected screen/route
- CSV to JSON export verification
- build profile validation

## Output contract
At the end, report:
1. what changed,
2. files created or modified,
3. assumptions made,
4. verification performed,
5. remaining risks or follow-up work.

## Related skills
List related focused skills.

Example:
- `flutter-project-bootstrap`
- `flutter-riverpod-feature`
- `flutter-localization-csv-import`
- `flutter-review-coherence`
