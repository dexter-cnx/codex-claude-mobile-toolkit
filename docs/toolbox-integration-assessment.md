# Toolbox integration assessment for codex-claude-mobile-toolkit

## Executive decision

Use the Toolbox page as an **operator reference source**, not as a direct dependency bundle.

The Toolbox page is a curated personal stack covering:

- Claude Code / Codex support tools
- config management
- single-repo multi-session UI
- skills management
- iOS remote control
- tmux multi-agent management
- Obsidian-linked PKM
- self-hosted helper services
- subscription recommendations

That is highly relevant to this toolkit, but only part of it belongs in a reusable repository.

## What is worth importing

### 1. Multi-session and multi-agent operating patterns

These are highly aligned with the toolkit's layered model.

Why it fits:
- the toolkit already exposes agent surfaces, prompts, skills, templates, and memory
- the repo explicitly treats work as a layered system
- a documented operator stack makes these layers easier to run in practice

Adopt as:
- docs
- templates
- prompts
- skills

### 2. Obsidian + PKM workflow

This is a strong fit because the toolkit already includes:
- `obsidian/`
- `project_memory/`
- summary, review, and memory-oriented prompt lanes

Adopt as:
- memory playbook
- note conventions
- session handoff template
- decision log structure

### 3. Self-hosted companion services

These are useful as optional infrastructure guidance when the user wants:
- bookmark capture
- WebDAV sync
- personal agent gateway
- cross-device storage and retrieval

Adopt as:
- advanced docs only
- explicitly optional setup guidance

### 4. Remote/mobile coding companion patterns

The Toolbox page includes iOS remote-control and terminal-first companion tools. That is useful for operator playbooks, especially for long-running agent workflows or monitoring from mobile devices.

Adopt as:
- docs
- operator checklist
- session monitoring pattern

## What should not be imported as core toolkit logic

### Desktop app list
Do not convert a personal app list into toolkit dependencies.

### Subscription list
Do not ship subscription recommendations as toolkit content.

### OS-specific preference utilities
Mouse smoothing, specific terminals, and similar preferences should remain examples, not standards.

### Personal taste tools without a reusable contract
Only import things that can be translated into a repeatable workflow or repository convention.

## Translation strategy

Convert source ideas into repository-native assets:

- docs explain the operating model
- prompts create or audit a stack
- templates standardize capture
- skills operationalize best practices
- project memory stores local decisions

## Merge recommendation

Status: **Recommended**
Scope: **Selective**
Priority: **Medium-high**
Risk: **Low**, if kept optional and documentation-led

## Success criteria

This integration is successful only if it:
1. improves agent operation across real projects,
2. remains optional,
3. does not force specific paid tools,
4. supports Windows/macOS/Linux mixed environments,
5. strengthens project memory and handoff quality.
