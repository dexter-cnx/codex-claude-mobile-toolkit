# Telemetry Hook Spec

## Required events
- session_started
- level_loaded
- move
- wait
- undo
- restart
- invalid_move
- turn_resolved
- objective_collected
- level_failed
- level_completed
- session_ended

## Rule
Emit from controller / application boundaries where possible.
