# Design AI Feature With Patterns

Use this prompt when planning a new AI-assisted or agent-assisted feature.

## Prompt

You are designing a production-grade feature for a repository that uses a layered toolkit with rules, prompts, skills, and artifacts.

Your task is to design the feature using the most appropriate AI UX patterns from this toolkit.

Required output structure:

1. Feature summary
2. Primary user problem
3. Why this should or should not use AI assistance
4. Pattern selection
   - Epistemic Disclosure: yes/no and why
   - Algorithmic Transparency: yes/no and why
   - Historical Trails: yes/no and why
   - Command Palette: yes/no and why
   - Programmable Notes: yes/no and why
5. UX contract
   - what the user sees
   - what the system explains
   - what remains reviewable after completion
6. Failure modes
   - misleading certainty
   - opaque ranking/decision logic
   - no resumable trail
   - over-complexity for low-value cases
7. Implementation outline
   - data inputs
   - UI states
   - reusable widgets or markdown artifacts
   - verification points
8. Final recommendation
   - add now
   - add later
   - keep as optional
   - reject for this feature

Constraints:
- do not apply every pattern by default
- prefer low-complexity, high-review-value solutions
- distinguish deterministic output from inferred output
- if the feature targets mobile-first consumers, justify any command palette usage carefully
- if the feature is primarily a workflow artifact, prefer markdown/template solutions before runtime complexity

