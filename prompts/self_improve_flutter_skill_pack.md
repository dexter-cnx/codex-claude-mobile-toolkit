# Self Improve Flutter Skills Pack

Use this prompt to extend or refine the Flutter skills pack without letting the toolkit bloat.

## Prompt

Audit the current Flutter skills pack and propose the smallest high-value improvement.

Process:
1. Read `skills/README.flutter-skills-pack.md`.
2. Read `docs/flutter-skills-pack/maintenance-guide.md`.
3. Identify overlap, drift, missing guardrails, or outdated assumptions.
4. Prefer improving an existing skill over creating a new one.
5. If proposing a new skill, justify:
   - repeated use case
   - why existing skills are insufficient
   - exact routing change needed
   - verification contract
6. Produce:
   - findings
   - recommended edits
   - file-by-file patch plan
   - risks
   - success criteria

Rules:
- keep the pack narrow
- preserve production-grade tone
- do not add skills for novelty
- do not introduce stack ambiguity unless the toolkit intentionally supports multiple lanes

