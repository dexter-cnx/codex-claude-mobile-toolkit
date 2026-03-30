# Skill: flutter-clean-architecture-lite

## Purpose
Apply Clean Architecture in a way that stays useful for Flutter teams: explicit boundaries where they help, fewer layers where they do not, and naming that supports long-term maintenance.

## When to use
- Defining or reviewing app architecture
- Deciding whether a feature needs domain abstractions
- Explaining how to keep a repo maintainable without enterprise ceremony

## When not to use
- Blindly templating every feature into entity/usecase/repository boilerplate
- Using architecture language without concrete file or ownership decisions

## Required inputs
- feature or app scope
- team preferences
- current or target state-management approach
- complexity level of the feature

## Optional inputs
- backend volatility
- testing expectations
- offline-first concerns

## Decision rules
- Architecture must pay rent.
- The domain layer should exist when business rules or reuse justify it.
- Keep data-source details out of presentation.
- Do not split trivial screens into ceremonial layers.

## Execution steps
1. Assess feature complexity and reuse needs.
2. Decide whether full layer separation is justified.
3. Define ownership for presentation, domain, and data concerns.
4. Document naming and dependency direction.

## Output contract
- architecture recommendation
- layer ownership notes
- foldering guidance
- anti-pattern warnings
- review checklist

## Acceptance checklist
- Responsibilities are explicit.
- The proposed layers match the actual complexity.
- Dependency direction is clear.
- The architecture is teachable to the team.

## Common failure modes
- Creating use cases that only forward one method.
- Putting mapping logic in widgets.
- Treating architecture as folder decoration rather than responsibility boundaries.

## Escalation rules
When the codebase already violates boundaries widely, pair this skill with `flutter-existing-project-audit`.

## Example task
Decide whether a simple settings screen needs domain use cases or just presentation + data services.
