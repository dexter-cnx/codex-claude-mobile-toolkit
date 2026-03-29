# Flame Boundary Rules

## Flame should own
- board rendering
- entity rendering
- lightweight animation and feedback
- input forwarding

## Flame should not own
- canonical puzzle state
- deterministic rule resolution
- content validation
- solver assumptions
- telemetry truth

## Best practice
Forward input to an application/controller boundary, then re-render from authoritative state.
