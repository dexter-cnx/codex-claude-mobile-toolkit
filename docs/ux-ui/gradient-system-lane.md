# Gradient System Lane for Flutter UI

## Purpose

This document defines how gradients should be used in Flutter-first products that adopt `codex-claude-mobile-toolkit`.

The goal is to make gradients:

- intentional,
- reusable,
- reviewable,
- token-driven,
- and safe for performance-sensitive mobile UI.

This is a design-system lane document, not a gallery of visual tricks.

## Core principle

A gradient is a semantic surface treatment.

Do not add gradients because they look modern. Add them only when they improve one or more of the following:

- hierarchy,
- brand expression,
- focus,
- depth,
- state feedback,
- or content separation.

If a gradient does not improve one of those, use a solid color instead.

## Supported gradient roles

### 1. Hero surface

Use for:

- onboarding hero sections,
- authentication headers,
- empty-state art surfaces,
- promotional cards,
- premium feature banners.

Characteristics:

- large surface area,
- low to medium contrast transitions,
- one clear direction,
- limited number of colors,
- content remains easy to read.

Preferred gradient types:

- linear,
- layered linear + radial,
- soft mesh-like composition.

### 2. Accent glow

Use for:

- focal affordances,
- featured avatars,
- important status chips,
- highlighted cards.

Characteristics:

- radial origin near the focus point,
- subtle opacity,
- never overpower the primary content.

Preferred gradient types:

- radial,
- radial layered over solid surface.

### 3. Directional emphasis

Use for:

- drawing the eye toward a CTA,
- motion suggestion,
- visual flow through a section.

Characteristics:

- clear directional line,
- controlled stop placement,
- foreground content remains readable across the surface.

Preferred gradient types:

- linear,
- layered linear.

### 4. Ring and progress treatment

Use for:

- circular progress,
- highlighted borders,
- premium-state rings,
- segmented or hard-edge rotational surfaces.

Characteristics:

- rotational energy,
- hard edges allowed,
- often requires clipping or custom paint.

Preferred gradient types:

- sweep gradient in Flutter as the practical analogue for conic-style visuals.

### 5. Overlay scrim

Use for:

- image legibility,
- modal backdrops,
- bottom-sheet depth,
- media header readability.

Characteristics:

- mostly functional,
- subtle and predictable,
- must improve contrast, not reduce it.

Preferred gradient types:

- linear,
- radial,
- layered low-alpha overlays.

## Gradient types and Flutter mapping

### Linear gradient

Use when visual flow should move from one edge or direction to another.

Typical Flutter primitive:

- `LinearGradient`

Best for:

- page hero backgrounds,
- CTA surfaces,
- image scrims,
- section separators.

### Radial gradient

Use when emphasis should radiate from a focal point.

Typical Flutter primitive:

- `RadialGradient`

Best for:

- glow surfaces,
- depth lighting,
- focal highlights,
- ambient accent backgrounds.

### Conic-style gradient

Flutter does not expose CSS `conic-gradient`, but `SweepGradient` is the practical equivalent for most UI work.

Typical Flutter primitive:

- `SweepGradient`

Best for:

- circular progress rings,
- animated borders,
- rotational highlight states,
- chart-like ring segments.

## Tokenization rules

Gradients should be represented as named tokens rather than inline ad hoc values whenever the usage is reusable or part of brand language.

### Token categories

Use names that describe role, not appearance.

Good:

- `surface.hero.brand`
- `surface.hero.neutral`
- `surface.card.premium`
- `accent.glow.primary`
- `accent.glow.success`
- `border.ring.focus`
- `overlay.scrim.media`

Avoid:

- `purpleBlueGradient1`
- `coolGradient`
- `prettyGlow`

### Token payload expectations

A reusable gradient token should define:

- gradient type,
- colors,
- stops,
- alignment or center data,
- usage notes,
- contrast notes,
- animation guidance.

## Design rules

### Use fewer colors than you think

Most production surfaces should use:

- two colors,
- or three colors max.

More colors are allowed only for:

- celebratory states,
- charts,
- premium marketing surfaces,
- or highly controlled branding.

### Do not stack decorative gradients without a job description

If using multiple gradient layers, document the purpose of each layer.

Example:

- layer 1 = brand directional wash,
- layer 2 = focal radial glow behind CTA,
- layer 3 = scrim for text legibility.

If no clear purpose exists for every layer, simplify.

### Hard edges are allowed only when structure benefits

Hard edges are useful for:

- segmented rings,
- chart slices,
- stylized borders,
- pattern accents.

Do not use hard-edge transitions on large reading surfaces unless it is an intentional visual system choice.

### Gradient text is a special-case treatment

Only use gradient text when all of the following are true:

- it is display text, not dense body text,
- the surface behind it is stable and predictable,
- contrast and readability remain high,
- it is part of the product's premium or hero language.

Avoid gradient text in:

- form labels,
- settings screens,
- data tables,
- error messages,
- and long body copy.

## Agent implementation rules

When an agent adds a gradient, it must state:

1. what UI role the gradient serves,
2. which token it used or created,
3. why a solid fill was insufficient,
4. and how readability/performance were checked.

## Verification expectations

Any change introducing or modifying gradients must be reviewed for:

- light mode,
- dark mode,
- text/icon contrast,
- reduced motion implications if animated,
- and rendering cost on scrolling or repeated list items.

## When not to use gradients

Do not use gradients for:

- routine form fields,
- dense productivity screens,
- repeated list tiles at scale unless tokenized and cheap,
- data-heavy enterprise screens where hierarchy clarity matters more than style,
- or any state where the gradient makes the UI harder to parse.

## Default recommendation for teams

Start small.

A healthy baseline is:

- 1 hero gradient family,
- 1 accent glow family,
- 1 scrim family,
- 1 ring/border family.

Expand only after the product language proves stable.

