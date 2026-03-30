# Skill: mobile-ui-refinement

## Purpose
Review a mobile UI or flow and propose improvements to hierarchy, spacing, typography, componentization, and implementation readiness.

## When to use
- A screen feels cluttered, confusing, or visually uneven
- The team wants a UI polish pass before implementation or release
- A screen needs a design-to-code or Stitch-friendly handoff

## When not to use
- Generating arbitrary style opinions with no relation to product goals
- Performing a full visual redesign when only targeted refinement is needed

## Required inputs
- screen or flow description
- product goal
- primary user actions
- existing design constraints

## Optional inputs
- screenshots or wireframes
- brand system
- accessibility concerns
- platform-specific patterns

## Decision rules
- Ground critique in usability and hierarchy.
- Tie design changes back to implementation decisions.
- Prefer reusable components over one-off styling hacks.
- Respect platform conventions when they matter.

## Execution steps
1. Review current information hierarchy and action priority.
2. Inspect spacing, typography, grouping, and affordances.
3. Identify component extraction opportunities.
4. Produce a refinement plan and handoff notes.

## Output contract
- ui findings
- recommended changes
- component opportunities
- implementation notes
- handoff summary
- acceptance checklist

## Acceptance checklist
- The most important actions are visually prioritized.
- Spacing and typography choices are consistent.
- Recommendations are implementable.
- The plan preserves product intent.

## Common failure modes
- Generic advice like “make it cleaner”.
- Ignoring content hierarchy.
- Suggesting changes that fight the existing design system unnecessarily.

## Escalation rules
If the issue is structural UX rather than visual polish, call that out and expand the flow analysis.

## Example task
Refine a dashboard screen so the selected-vehicle section, reminders, and quick actions feel clearer and less cramped.
