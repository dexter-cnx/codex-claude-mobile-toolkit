# Algorithmic Transparency

## Definition

Make the logic behind ranking, filtering, recommendation, prioritization, or decision-making visible enough that the user understands why they got a result and how they can influence it.

## Why it belongs in this toolkit

Modern apps increasingly include:
- search ranking
- recommendation lists
- prioritization queues
- smart filters
- AI scoring and summarization
- automated next-step suggestions

In a toolkit used for AI-assisted delivery, opaque logic quickly becomes a trust problem.

## When to use

Use when a system:
- ranks results
- suggests actions
- prioritizes tasks
- chooses examples
- recommends fixes
- hides or surfaces content based on internal rules

## What to expose

Expose some subset of:
- main factors affecting the result
- user-controlled inputs
- current sort or ranking mode
- excluded factors
- why this item appears above another

## Minimal explanation contract

```md
## Why this result appears
- matched GraphQL schema names
- boosted recent files
- deprioritized archived modules

## Controls that affect it
- recency boost
- pinned tags
- environment filter

## Not considered
- file popularity
- personal preference history
```

## Good uses in toolkit artifacts and products

- smart search in internal tools
- recommendation UIs
- issue prioritization dashboards
- AI-generated next-step suggestions
- admin tools that surface “top risks” or “best matches”

## Flutter implementation ideas

- inline “Why this?” chips or dialogs
- visible sort mode header
- explanation drawer on ranked lists
- user-tunable filters with plain-language descriptions

## Acceptance criteria

A feature using this pattern should let a reviewer answer:
- what drove this result?
- what can the user change?
- what hidden assumptions remain?

## Pitfalls

Avoid:
- pretending to expose internals you do not truly know
- explanations that are more complex than the decision itself
- using “AI decided this” as if that were an explanation

