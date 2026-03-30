# Staged State Reference

## Goal

Prevent the classic race where a remote refresh overwrites a recent local action.

## Model

Track these separately when needed:

- visible data
- pending local mutations
- refresh status
- refresh error
- state origin

## Pending mutation examples

A pending mutation might be:

- like item 42
- favorite item 18
- archive item 33
- mark item 55 as read

Each mutation should know how to apply itself to a domain collection or detail model.

## Merge algorithm

```text
fresh remote payload
-> apply pending local mutations in order
-> produce merged visible state
-> persist merged state
-> clear reconciled mutations only
```

## Practical rules

- mutation ordering should be deterministic
- mutation application should be pure/testable where possible
- pending mutations should not be cleared just because refresh completed
- only clear what is reconciled or confirmed

## Reconciliation choices

Depending on the feature, reconcile by:

- matching server payload outcome
- sync-success callback
- idempotent server truth replacing local state safely

Document which rule the feature uses.
