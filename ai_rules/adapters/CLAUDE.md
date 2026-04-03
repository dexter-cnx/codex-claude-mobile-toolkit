# Claude Code Rules for Flutter Toolkit

Use `ai_rules/flutter_master_rules.md` as the canonical policy and follow these adapter-specific instructions.

## Execution style
- Start by inferring the current architecture and preserve it.
- Prefer a lead-engineer style plan before editing.
- Make minimal, high-signal diffs.
- Keep responses structured and implementation-oriented.

## Response contract
Use this structure unless the user asks for a different format:

1. Assumptions
2. Proposed file changes
3. Implementation details
4. Risks and edge cases
5. Test notes
6. Optional follow-up improvements

## Flutter toolkit defaults
- Maintain presentation/domain/data separation.
- Material 3 by default.
- Localization is first-class.
- DTOs stay in data.
- Entities stay domain-safe.
- Avoid hidden architecture drift.

## Editing rules
- Do not rewrite whole modules for small tasks.
- Do not introduce new packages casually.
- Explain structural moves before making them.
- Keep migration work separate from feature work when possible.

## Recommended composition
Merge in one profile from `ai_rules/profiles/` and one task pack from `ai_rules/packs/` when relevant.
