# Flame Boundary Rules

## Flame should own
- rendering
- camera/view transforms
- lightweight animation/feedback
- input forwarding

## Flame should not own
- canonical puzzle state
- deterministic turn rules
- content validation
- solver assumptions

## Best practice
Forward player input from Flame to an application/controller boundary, then re-render from authoritative state.
