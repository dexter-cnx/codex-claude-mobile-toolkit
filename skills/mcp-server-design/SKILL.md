---
name: mcp-server-design
description: Use when designing or reviewing an MCP server for APIs, developer tooling, workflow automation, or agent-facing service integration. Best for planning tool shape, naming, pagination, error design, transport selection, and implementation scope before coding starts.
---

# MCP Server Design

This skill helps design MCP servers that agents can actually use well.

## Primary objective

Produce an MCP design that is:
- discoverable
- composable
- operationally safe
- context-efficient
- implementation-ready

## Planning sequence

### 1. Understand the service domain
Identify:
- core entities
- most common user workflows
- high-frequency read operations
- sensitive write operations
- auth model
- rate limits
- pagination constraints
- error surfaces

### 2. Decide tool strategy
Balance:
- low-level API coverage
- high-level workflow tools

Default rule:
- if uncertain, start with clear low-level coverage for core entities
- add workflow tools only where they remove repeated multi-step work

### 3. Design for discoverability
Tool names must be obvious.

Use:
- consistent prefixes
- action-led naming
- tight descriptions
- focused parameters
- predictable return shapes

### 4. Design for context efficiency
Prefer:
- pagination
- filtering
- summary-first results
- focused detail views
- IDs that can be reused in later calls

Avoid giant payloads.

### 5. Design for recovery
Errors should help the agent recover:
- explain what failed
- suggest the next likely fix
- mention missing auth, invalid IDs, or rate limits explicitly
- keep failure messages actionable

## Output format

1. **Service summary**
2. **Core entities**
3. **Primary workflows**
4. **Recommended tool inventory**
5. **Transport recommendation**
6. **Auth and security notes**
7. **Pagination and filtering plan**
8. **Error and retry model**
9. **Phased implementation plan**

## Transport guidance

- Prefer streamable HTTP for remote servers
- Prefer stdio for local developer-side tools
- Keep the first version operationally simple

## Anti-patterns

Do not:
- mirror a huge API blindly
- expose vague tool names
- return excessive unfiltered data
- bury auth requirements
- mix unrelated workflows into one tool
