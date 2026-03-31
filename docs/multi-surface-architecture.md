# Multi-Surface Architecture for Flutter Products

Use this guide when one product must support more than one real delivery surface, such as:

- mobile app + Android TV app,
- mobile + desktop,
- user app + admin shell,
- app + supporting console or dev shell.

This is not for hypothetical future expansion. Use it only when at least two surfaces are already required or strongly committed.

---

## Core idea

Keep **business meaning** in a shared core and keep **surface behavior** in the surface app.

Shared core usually owns:

- entities,
- use cases,
- repository contracts,
- normalized models,
- adapter interfaces,
- shared orchestration that is not UI-framework-specific.

Surface apps own:

- routing,
- shell layout,
- navigation patterns,
- platform-specific interaction models,
- focus/touch behavior,
- platform packaging,
- local presentation state that is specific to that surface.

---

## When multi-surface structure is justified

Good reasons:

- the same domain is being delivered to both phone/tablet and TV,
- the same repository and use cases are needed by multiple shells,
- a console or admin surface needs shared product logic,
- more than one surface would otherwise duplicate the same adapters or repositories.

Weak reasons:

- “we might want desktop one day”,
- “a package split feels cleaner”,
- “the project is early and we want to future-proof everything”.

Do not split too early.

---

## Recommended shape

A common structure:

```text
apps/
  mobile_app/
  tv_app/
  desktop_app/
  admin_shell/
packages/
  app_core/
  app_design_system/
  app_realtime/
  app_source_adapters/
```

A smaller variation:

```text
app/
packages/
  app_core/
```

Only extract additional packages when they represent a real boundary.

---

## Boundary rules

### Put in shared core

- domain entities,
- use cases,
- repository contracts,
- normalized DTO mapping,
- transport abstraction,
- shared persistence logic,
- provider capability handling,
- feature flags that affect domain or data behavior.

### Keep out of shared core

- route trees,
- widget trees,
- surface-specific view models,
- D-pad focus graphs,
- phone-only animation assumptions,
- TV-only navigation semantics,
- shell composition.

---

## Shared core package checklist

Before creating `app_core`, confirm it will contain at least several of these:

- multiple use cases reused by more than one app shell,
- multiple repositories reused by more than one app shell,
- real provider normalization logic,
- shared caching or persistence rules,
- a stable enough domain model to justify packaging.

If the package would contain mostly one screen's logic, it is too early.

---

## Multi-surface state management guidance

Use one of these patterns:

### 1. Shared domain + per-surface presentation state

Best default.

- shared package owns use cases and repositories,
- each app shell maps domain state into presentation state appropriate for its input mode.

### 2. Shared orchestration package + thin shells

Use when the app surfaces are truly very similar and differ mostly in shell layout.

### 3. Shared data only, separate domain/presentation per surface

Use when upstream providers are shared but product behavior differs substantially by surface.

---

## Routing guidance

Never centralize all routing in the shared core.

Routing belongs to the surface because:

- route hierarchy is a UX concern,
- focus behavior differs by platform,
- deep links often differ by shell,
- overlays and modals differ by surface.

The shared core may expose route-friendly identifiers or entities, but not the route tree itself.

---

## Verification checklist

When introducing or refactoring to multi-surface architecture, verify:

- shared packages build independently if intended,
- app shells can consume shared contracts without circular imports,
- provider-specific details do not leak into UI code,
- route or focus code is not drifting into shared packages,
- at least one representative flow works on each real surface,
- docs explain the boundary and why it exists.

---

## Common mistakes

- creating many packages before the product has proven boundaries,
- sharing UI widgets that should remain surface-specific,
- mixing transport or scraping details into domain contracts,
- forcing identical UX patterns across touch and non-touch surfaces,
- centralizing all app initialization into a package that becomes impossible to reason about.

---

## Rule of thumb

Share **meaning and behavior**, not **surface assumptions**.
