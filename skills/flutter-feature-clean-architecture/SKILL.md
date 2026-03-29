---
name: flutter-feature-clean-architecture
description: Add or refactor a Flutter feature with pragmatic Clean Architecture and clear layer boundaries.
---

# Purpose

Use this skill when adding a feature to an existing Flutter project.

# Required outputs

- domain entity
- repository contract
- use case(s)
- data models and mappers
- repository implementation
- state holder
- page and subwidgets
- loading, empty, error, success handling

# Constraints

- no DTO leakage into presentation
- no HTTP use in widgets
- no unrelated rewrites

# Process

1. Inspect neighboring code.
2. Mirror good local patterns.
3. Generate the minimum complete slice.
4. Run the coherence pass.
