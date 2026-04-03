# Tooling ecosystem

This document defines the **companion tooling layer** around `codex-claude-mobile-toolkit`.

The toolkit itself provides the reusable repository contract:
- rules
- prompts
- skills
- templates
- memory
- workflow shells

The tooling ecosystem provides the **operator environment** used to run those contracts efficiently.

## Design principle

Keep the toolkit core stable and portable.
Treat ecosystem tools as replaceable adapters.

## Ecosystem layers

## 1. Session control layer

Purpose:
- run multiple agent sessions against one repo
- separate planning, implementation, review, and verification work
- preserve context boundaries

Typical responsibilities:
- launch parallel terminal sessions
- pin role-based session naming
- manage worktree or branch isolation
- surface quick navigation between agent lanes

Recommended outputs:
- session map
- branch-to-agent assignment
- role ownership table
- handoff notes per session

## 2. Skills and prompt routing layer

Purpose:
- make the right workflow easy to invoke
- reduce prompt drift
- standardize execution lanes

Typical responsibilities:
- choose the correct prompt entrypoint
- select narrow skills before broad prompting
- enforce pre-flight and post-flight checks

Recommended outputs:
- skill selection rationale
- prompt invocation log
- review checklist status

## 3. Memory and note layer

Purpose:
- convert transient agent output into durable project context
- keep architecture, decisions, assumptions, and investigations searchable

Backends may vary:
- Obsidian vault
- repository markdown
- synced personal notes
- bookmark capture systems

Repository-first rule:
- canonical project memory must still land in repository files
- external note tools are acceleration layers, not the source of truth

## 4. Remote operation layer

Purpose:
- monitor, continue, or inspect long-running work from another device
- keep operator visibility while away from the main workstation

Typical patterns:
- mobile terminal monitoring
- remote browser dashboards
- private network access
- lightweight notification channels

## 5. Companion services layer

Purpose:
- support sync, bookmarks, WebDAV, reading workflows, and personal infra

Examples of use cases:
- bookmark capture for research
- synced note storage
- personal gateway or agent control plane
- file synchronization across machines

## Recommended stance for the toolkit

### Core
Must remain repo-native:
- prompts
- skills
- templates
- docs
- project memory

### Optional companion layer
May be documented:
- multi-session UIs
- remote terminals
- private networking
- sync backends
- bookmark systems
- self-hosted helper services

### Not part of the toolkit contract
Should not be required:
- paid subscriptions
- personal preference utilities
- single-vendor lock-in

## Operating rule

When adding ecosystem guidance, always answer:
1. What problem does this solve for an agent operator?
2. Can it be replaced without breaking the toolkit?
3. What repository artifact should it produce?
4. What is the low-friction fallback if the tool is absent?

If those questions cannot be answered cleanly, it does not belong in the toolkit.
