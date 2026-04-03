# Pattern Evaluation Matrix

Use this matrix before adding any pattern to a starter, template, feature spec, or shared toolkit rule.

## Summary

| Pattern | Toolkit fit | Mobile fit | Web/Desktop fit | Implementation cost | Review value | Recommendation |
|---|---|---:|---:|---:|---:|---|
| Epistemic Disclosure | Very high | High | High | Low | Very high | Add now |
| Algorithmic Transparency | Very high | High | High | Low to medium | Very high | Add now |
| Historical Trails | Very high | Medium to high | High | Medium | High | Add now |
| Command Palette | Medium | Low | Very high | Medium | Medium | Add selectively |
| Programmable Notes | Medium to high | Low to medium | High | Medium to high | High | Add selectively |

## Detailed notes

### Epistemic Disclosure

**Why it fits**
- aligns with agent-generated outputs
- improves trust in summaries, plans, audits, and recommendations
- maps cleanly to templates and review artifacts

**Why it is worth it**
- low implementation cost
- high leverage across many workflows
- makes AI-generated artifacts safer to review and merge

### Algorithmic Transparency

**Why it fits**
- this toolkit is used for AI-assisted delivery and decision-heavy workflows
- ranking, filtering, and recommendation patterns appear frequently in modern product work

**Why it is worth it**
- prevents black-box behavior in product specs and demos
- encourages controllable systems rather than mystical ones

### Historical Trails

**Why it fits**
- strongly aligned with debugging, audits, step-by-step execution, and agent workflows
- supports resumable work and handoff quality

**Why it is worth it**
- helps users recover context after interruption
- supports artifact-quality final reports

### Command Palette

**Why it fits**
- best for internal tools, Flutter web, desktop, and feature-rich consoles

**Why it is only selective**
- weak default fit for touch-first mobile consumer apps
- not every starter needs it

### Programmable Notes

**Why it fits**
- pairs well with prompts, Obsidian workflows, project memory, and reusable investigation recipes

**Why it is only selective**
- can drift into over-engineering
- should begin as conventions and templates before becoming interactive product features

## Recommended adoption policy

### Add to core toolkit immediately
- Epistemic Disclosure
- Algorithmic Transparency
- Historical Trails

### Add as optional patterns
- Command Palette
- Programmable Notes

### Do not add right now
- patterns that are mostly aesthetic
- patterns that require heavy runtime infrastructure before proving value
- patterns with weak overlap to agentic product delivery

