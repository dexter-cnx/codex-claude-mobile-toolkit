# AI UX Patterns Skill

## Purpose

Use this skill when designing, implementing, or reviewing AI-assisted and agent-assisted product experiences.

## Use this skill for

- AI-generated summaries and reports
- recommendation or prioritization UIs
- agent execution dashboards
- investigation and audit workflows
- internal tools with many actions
- structured memory or note-driven workflows

## Core idea

Select patterns based on failure prevention, not trend adoption.

## Pattern routing

### Use Epistemic Disclosure when
- output includes inference
- the user may mistake generated text for verified fact
- a reviewer needs to know confidence and evidence basis

### Use Algorithmic Transparency when
- the system ranks, filters, recommends, or prioritizes
- the user needs to understand what affected the result

### Use Historical Trails when
- the task spans multiple steps
- the result may need handoff or resumption
- users benefit from seeing prior stages and next steps

### Use Command Palette when
- the product is web or desktop heavy
- users are power users
- the action space is large and repetitive

### Use Programmable Notes when
- markdown artifacts drive repeatable workflows
- prompts, briefs, or memory docs need explicit execution structure

## Delivery checklist

Before completing work, verify:
- the selected patterns are justified
- unselected patterns were consciously rejected
- the final output is reviewable
- uncertainty is disclosed where needed
- the interface is not overcomplicated for the value it returns

## Expected outputs

Depending on task type, produce one or more of:
- feature design note
- widget or screen specification
- markdown artifact contract
- review checklist
- implementation plan

