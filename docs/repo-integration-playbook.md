# Repo Integration Playbook

This document explains how to integrate `codex-claude-mobile-toolkit` into a real product repository without letting the toolkit take over app-specific concerns.

## Integration models

### 1. Submodule model
### 2. Copy-in model
### 3. Overlay model

## Recommended overlay boundaries

### Keep in toolkit
- general Flutter engineering rules
- reusable prompts
- reusable skills
- generic architecture templates
- agent operating guidance
- workflow shells
- implementation artifact templates

### Keep in project repo
- routes and screens specific to the product
- business entities and rules
- backend environments
- package allowlists tied to one repo
- copywriting and localization content
