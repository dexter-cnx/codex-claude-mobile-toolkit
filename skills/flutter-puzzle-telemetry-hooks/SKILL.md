---
name: flutter-puzzle-telemetry-hooks
description: Add puzzle-specific telemetry hooks to a Flutter + Flame game so playtest events match the shared schema.
---

Use this skill for:
- TelemetrySink abstraction
- GameTelemetryService
- session/action/outcome hooks
- event schema compatibility

Required events:
- session_started
- level_loaded
- move / wait / undo / restart
- invalid_move
- objective_collected
- level_failed / level_completed
- session_ended
