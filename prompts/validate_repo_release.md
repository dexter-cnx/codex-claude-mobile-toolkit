# Prompt: Validate Repo Release

Use this prompt when you want the agent to perform a release-readiness pass.

## Instructions

Review the repository change set and produce a release-readiness result.

You must:
1. summarize what changed,
2. identify affected user/developer flows,
3. run or describe the appropriate validation steps,
4. state what could not be validated,
5. evaluate accessibility and error-handling impact,
6. classify risk as low, medium, or high,
7. produce a concise release-readiness checklist result.

Use these references:
- `docs/repo_discipline/validation-standard.md`
- `docs/repo_discipline/release-readiness-standard.md`
- `templates/checklists/release-readiness.md`

Output sections:
- Change Summary
- Validation Run
- Accessibility Impact
- Error Handling Impact
- Risk Assessment
- Release Checklist
- Residual Risks
