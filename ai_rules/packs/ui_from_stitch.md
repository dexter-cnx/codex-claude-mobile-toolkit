# Task Pack: UI from Stitch

Use this pack when implementing or refining UI from Google Stitch or another design handoff.

## Goals
- Preserve the design intent
- Translate designs into reusable Flutter widgets and tokens
- Avoid one-off hard-coded UI values
- Keep layouts responsive and production-friendly

## Workflow
1. Identify global tokens from the design.
2. Extract reusable sections/components.
3. Map design states to widget states.
4. Separate content models from widgets when content is data-driven.
5. Keep animation and effects subtle unless the design explicitly depends on them.

## Rules
- Prefer theme/token integration over raw values.
- Do not reproduce every visual detail as a fragile custom hack.
- Preserve accessibility and text scaling.
