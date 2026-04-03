# AI Context Management

## Purpose

This guide explains how to reduce token waste, prevent context overflow, and improve coding-agent reliability during real repository work.

The goal is not only to save quota. Good context hygiene improves precision, reduces hallucination risk, shortens feedback loops, and makes multi-step coding sessions more stable.

---

## Why tokens disappear faster than expected

Many coding assistants repeatedly process prior conversation context, tool results, file excerpts, terminal output, and system instructions during a session. That means long chats, repeated explanations, pasted logs, large diffs, and unnecessary file dumps compound cost and reduce signal quality over time.

Common causes:

- long chat sessions without resets
- broad repository scans for narrow tasks
- huge shell output included in-context
- repeated summaries of the same material
- speculative code generation that later needs reversal
- always-on heavy integrations that add noise to the working set

The problem is usually not “the plan is too small.” The problem is that the session carries too much low-value context.

---

## Core operating principles

### 1. Keep tasks narrow

Work on one bounded objective at a time.

Good:
- fix the crash on login submit
- add pagination to the orders list
- refactor only the repository layer for profile caching

Bad:
- clean up the whole app
- improve architecture everywhere
- investigate all slow screens and rewrite navigation

A narrow task preserves context budget for reasoning instead of bookkeeping.

### 2. Keep durable rules separate from task context

Use `CLAUDE.md` only for durable rules:
- tech stack
- core architecture rules
- coding conventions
- build/test commands
- context management rules

Do not turn `CLAUDE.md` into a dump of transient task notes, long examples, research notes, or meeting transcripts.

### 3. Keep output bounded

The terminal can destroy context efficiency faster than almost anything else.

Prefer:
- `rg keyword lib/`
- `head -n 40 file.log`
- `tail -n 80 build.log`
- `git diff -- lib/features/orders/`
- `jq '.errors[:10]' report.json`

Avoid:
- full dependency trees
- full generated files
- full test logs when only one failure matters
- raw long JSON payloads without filtering

### 4. Reset when the task changes

A session that started with debugging should not automatically become a planning session, then a refactor session, then a release session without a reset.

When changing focus:
1. summarize the current state
2. note what is still unresolved
3. start a fresh focused thread or use a compact handoff prompt

### 5. Stop guessing early

The most expensive token waste often comes from speculative work. The assistant goes down the wrong path, writes plausible but incorrect code, then the whole session pays again to undo it.

Adopt a **95% Confidence Rule**:
- if confidence is below 95%, stop and ask
- do not invent missing APIs, requirements, or architecture decisions
- get confirmation before structural changes

---

## The 95% Confidence Rule

### Rule

If the assistant is not highly confident that it understands the requirement, expected behavior, or repository convention, it should ask instead of improvising.

### Use this rule especially when:

- the expected UX is unclear
- there are several valid architectural directions
- the repository contains multiple patterns for the same concern
- API fields or backend contracts are uncertain
- the task can cause wide refactors
- naming, navigation, or state ownership is ambiguous

### Example

Bad:
> I assumed the app uses Riverpod for all feature state, so I rewired the screen and repository.

Good:
> I found both GetX and Riverpod patterns in the repo. Confidence is below 95% for the intended state-management choice on this screen. Please confirm whether this feature should follow the existing GetX pattern or the newer Riverpod pattern.

---

## Integration discipline: MCPs, tools, and CLI

Heavy integrations can be useful, but they should not remain enabled by default if they are not relevant to the current task.

### Recommendations

- Disable unused MCP servers for the current workstream.
- Use CLI for targeted inspection whenever it is simpler and lower-noise.
- Turn on external integrations only when they materially improve the task.
- Avoid cross-system context pull unless necessary.

### Good fit for CLI

- grep-style code search
- filtered git history
- focused file inspection
- targeted test execution
- bounded JSON/log processing

### Good fit for integrations

- documents or tickets required to understand the task
- design sources needed for UI accuracy
- external systems that are the source of truth for the change

---

## Compacting and clearing context

Use compacting or resetting behavior whenever:

- the task is complete
- you are changing domains
- the conversation is becoming noisy
- the assistant has accumulated dead-end reasoning
- you are about to step away and resume later

### Recommended compact handoff structure

- goal
- current status
- files touched
- confirmed assumptions
- unresolved questions
- next smallest step

A good handoff is short enough to rehydrate quickly and specific enough to avoid rediscovery.

---

## Command output bloat

Command output bloat is one of the easiest ways to burn context with almost no benefit.

### High-risk output sources

- verbose builds
- lints across the entire repo
- long stack traces
- multi-thousand-line diffs
- full `git log`
- giant API responses
- generated code or lockfile output

### Mitigations

- scope commands narrowly
- filter aggressively
- request only failure excerpts
- summarize instead of pasting raw output
- rerun only on relevant modules/files

### Examples

Instead of:
```bash
git log --stat
```

Use:
```bash
git log --oneline -n 20 -- lib/features/profile/
```

Instead of:
```bash
flutter test
```

Use:
```bash
flutter test test/features/profile/profile_controller_test.dart
```

Instead of:
```bash
cat huge-response.json
```

Use:
```bash
jq '.items[:5]' huge-response.json
```

---

## Quota usage mindset

Quota should be spent intentionally.

Good uses of quota:
- precise planning before a large refactor
- focused debugging on hard failures
- targeted code review of risky changes
- short, bounded autonomous test/fix loops

Poor uses of quota:
- letting the assistant wander on uncertain requirements
- flooding context with logs and repeated explanations
- using large-model reasoning for simple grep-level tasks
- keeping unrelated work in one long session

---

## Good patterns

### Good pattern: focused debug loop
1. define the bug precisely
2. inspect only relevant files
3. reproduce with bounded output
4. patch the minimal fix
5. run targeted verification
6. summarize the result

### Good pattern: bounded refactor
1. define refactor boundary
2. state constraints
3. inspect affected files only
4. make incremental changes
5. run narrow tests
6. stop before adjacent cleanup expands scope

### Good pattern: compact handoff
1. summarize completed work
2. list open questions
3. identify next file or command
4. reset context for the next topic

---

## Bad patterns

- asking the assistant to “analyze the whole repo” without a tight goal
- mixing debugging, architecture, and product planning in one session
- pasting hundreds of lines of logs into chat without filtering
- keeping obsolete assumptions alive after the task changes
- allowing speculative changes when repository conventions are unclear
- storing transient session notes in `CLAUDE.md`

---

## Pre-flight checklist before asking the agent to code

- Is the task small enough?
- Are the requirements explicit?
- Is there any architectural ambiguity?
- Can file inspection be narrowed further?
- Can command output be bounded before running it?
- Is there any stale context that should be summarized and dropped?
- Does this need an integration, or will CLI be enough?

---

## Suggested shell habits

```bash
rg "OrderRepository" lib/
rg --glob '!*.g.dart' "TODO|FIXME" lib/
head -n 60 crash.log
tail -n 80 build.log
git diff -- lib/features/orders/
git log --oneline -n 15 -- lib/features/orders/
flutter test test/features/orders/
flutter analyze lib/features/orders/
jq '.errors[:10]' output.json
```

---

## Final rule

Context is a budget. Spend it on reasoning, not noise.
