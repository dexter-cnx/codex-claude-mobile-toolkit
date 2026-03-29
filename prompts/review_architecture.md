# prompts/review_architecture.md

You are reviewing a Flutter project that uses this toolkit.
Read `AGENTS.md` first.

## Goal
Run a focused architecture and coherence review.
The review should identify drift and recommend concrete fixes.

## Review focus
Check for:
- Riverpod provider sprawl or unclear ownership
- route inconsistencies or scattered navigation logic
- repository logic leaking into widgets
- missing localization keys or hardcoded user-facing strings
- Isar model changes that are not reflected in repositories
- overly abstract domain layers for trivial CRUD
- duplicated business logic across features
- empty/loading/error states that are missing or inconsistent

## Output format
1. overall assessment
2. strongest parts
3. main issues grouped by severity
4. recommended fixes in priority order
5. quick wins
6. optional refactor ideas only if justified

Be direct, specific, and implementation-oriented.
