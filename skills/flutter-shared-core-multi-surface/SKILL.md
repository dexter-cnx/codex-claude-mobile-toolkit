# flutter-shared-core-multi-surface

## Purpose

Use this skill to plan or refactor Flutter product architecture when more than one real delivery surface must share core business behavior.

Examples:

- mobile + TV,
- mobile + desktop,
- user app + admin shell,
- app + console tooling.

---

## When to use

Use this skill when:

- more than one app shell already exists or is committed,
- business logic is being duplicated across surfaces,
- repositories or provider integrations should be shared,
- a shared package boundary would reduce real maintenance cost.

Do **not** use this skill purely for speculative future-proofing.

---

## Goals

- share domain and data behavior without sharing surface assumptions,
- keep routing and shell composition local to each surface,
- reduce duplication without exploding package count,
- preserve clear boundaries between shared behavior and surface-specific UX.

---

## Process

### 1. Confirm multi-surface need is real

If there is only one current surface and no committed second surface, avoid package splitting unless another boundary strongly justifies it.

### 2. Identify what is truly shared

Usually shared:

- entities,
- use cases,
- repository contracts,
- source adapters,
- persistence logic.

Usually surface-specific:

- routing,
- shell layout,
- focus behavior,
- surface-specific presentation state,
- page composition.

### 3. Choose package shape conservatively

Start with the smallest shared package layout that reflects real reuse.

### 4. Preserve clear ownership

Each surface should still own its route tree and input model.

---

## Verification checklist

Verify at least:

- shared packages do not import app-shell UI concerns,
- surface apps can consume shared contracts cleanly,
- provider logic is not duplicated across app shells,
- docs explain why the boundary exists,
- at least one key flow still works on each real surface.

---

## Expected outputs

1. package/boundary proposal,
2. shared-vs-surface ownership summary,
3. migration plan if refactoring,
4. verification summary,
5. residual risks.
