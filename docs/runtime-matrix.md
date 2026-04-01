# Runtime Matrix

This document explains which parts of the toolkit are best suited to which agent surface.

Use it to answer one practical question:

**Where should this task run?**

---

## Summary table

| Surface | Best for | Strengths | Common caveats |
|---|---|---|---|
| Codex / Codex-style | Repo-local implementation, structured prompt pipelines | Strong fit for rule-driven repo work, portable prompt/skill usage | Depends on local project context and tool availability |
| Claude Code | Terminal-native engineering sessions, deep repo operations | Strong interactive coding workflow, good for refactor/debug loops | Surface behavior may differ from Codex conventions |
| Grok Code | Additional coding surface using same shared rules | Reuses same durable repo conventions | Requires its own overlay discipline |
| Antigravity | Workflow-heavy execution with artifact discipline | Best when tasks must emit standardized outputs and follow step order | More overhead than direct prompt use |
| OpenClaw | Remote/chat-driven orchestration | Useful for distributed or channel-based workflows | Not every coding task is ideal through chat orchestration |
| Shared docs/templates | Cross-surface governance and artifacts | Common language across all runtimes | Must be kept synchronized |

---

## Recommended decision rules

### Use Codex when

- the task is implementation-heavy,
- repo-local files matter,
- you want structured prompt execution,
- or you need a practical all-round default.

### Use Claude Code when

- the task involves a lot of iterative terminal work,
- deep file-by-file refactoring is expected,
- or the developer already prefers Claude Code as the primary shell.

### Use Antigravity when

- the task spans planning, implementation, and verification,
- artifacts must be emitted consistently,
- multiple contributors should follow the same execution lane,
- or workflow strictness is more important than raw speed.

### Use OpenClaw when

- you want to trigger or supervise work remotely,
- the same conventions need to be used from Discord or another channel,
- or the work benefits from gateway-style orchestration.

### Use shared docs/templates when

- the output should be readable by humans regardless of agent,
- the repo owner wants stable conventions,
- or future sessions must be able to resume context cleanly.

---

## Workflow support matrix

| Workflow | Codex | Claude Code | Grok Code | Antigravity | OpenClaw |
|---|---|---|---|---|---|
| Read repo rules | Strong | Strong | Strong | Strong | Strong |
| Plan feature | Strong | Strong | Medium | Strong | Medium |
| Implement feature | Strong | Strong | Medium | Strong | Medium |
| Emit verification artifacts | Medium | Medium | Medium | Strong | Medium |
| Maintain project memory | Strong | Strong | Medium | Strong | Medium |
| Remote chat-driven coordination | Weak | Weak | Weak | Medium | Strong |
| Long structured workflow execution | Medium | Medium | Medium | Strong | Medium |

---

## Caveat categories

When declaring runtime support, always note caveats explicitly.

### Tooling caveat
Example: requires Flutter SDK, Dart CLI, build_runner, MCP server, or local shell access.

### Surface caveat
Example: a prompt assumes repo-local file editing, but the chosen surface is chat-oriented.

### Artifact caveat
Example: a workflow expects a verification report, but the runtime does not automatically save files.

### Policy caveat
Example: human review is still required before merge or release.

---

## Recommended baseline mapping for this toolkit

### Shared layer
Should remain surface-neutral wherever possible:

- `AGENTS.md`
- `docs/`
- `templates/`
- registry/governance files
- memory system files

### Codex / Claude Code layer
Best for:

- `prompts/`
- `skills/`
- implementation workflows
- code review and bug investigation lanes

### Antigravity layer
Best for:

- artifact-driven workflows,
- large feature lanes,
- repeatable execution with stricter task framing,
- and MCP-assisted procedural work.

### OpenClaw layer
Best for:

- remote coordination,
- chat-driven routing,
- summary-driven task launches,
- and light orchestration into local or server-side agent workers.

---

## Maintenance rules

Update this file whenever:

- a new agent surface is added,
- a workflow changes from optional to required,
- a setup assumption changes,
- or a previously experimental lane becomes stable.

