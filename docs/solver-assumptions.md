# Solver Assumptions

The exact solver should assume:
- deterministic turn order
- invalid directional moves do not consume a turn
- guard routes are cyclic unless explicitly stated otherwise
- switch/door semantics are explicit
- cameras/lasers use explicit active patterns when present

Do not claim solvability beyond modeled semantics.
