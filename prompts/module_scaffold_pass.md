# Prompt: Module Scaffold Pass

Use this prompt to create or review a new feature module.

Requirements:
1. scaffold the feature under `lib/src/features/<feature_name>/`
2. separate `presentation`, `domain`, and `data`
3. define contracts before implementations when reasonable
4. keep DTOs and transport concerns inside `data`
5. identify route integration, state ownership, and test surface
6. identify localization keys and empty/error states

Reference:
- `docs/repo_discipline/module-first-architecture.md`

Output:
- Proposed Feature Structure
- Key Contracts
- State Ownership
- Data Flow
- Edge States
- Suggested Tests
