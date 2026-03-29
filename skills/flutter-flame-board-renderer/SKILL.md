---
name: flutter-flame-board-renderer
description: Implement or refine the Flame-based board renderer for a turn-based puzzle game while keeping authoritative state outside Flame.
---

Use this skill for:
- board rendering
- tile/entity components
- input adapters
- lightweight animation/feedback

Rules:
- Flame renders state; it should not invent state
- forward input to controller/application boundaries
