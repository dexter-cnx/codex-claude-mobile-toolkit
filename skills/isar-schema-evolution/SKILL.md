# Skill: Isar Schema Evolution

## Purpose
Use this skill when a Flutter project needs to change local persistence models that use Isar.

## Goals
- keep model changes understandable
- keep repository updates aligned with schema changes
- reduce surprises when evolving a local-first app

## Check before changing schema
- what entity or feature is changing?
- does the change belong in the existing model?
- do repositories need new mapping or query behavior?
- does the UI rely on old fields or assumptions?
- does export/import logic need updates?

## Rules
- prefer additive, understandable changes over clever schema tricks
- update model definitions and repository logic together
- avoid leaking persistence concerns into widgets
- document non-obvious migration implications in the task summary

## Review after changes
- are all reads/writes updated?
- are old field references removed or adapted?
- are tests or debug checks needed for risky changes?
