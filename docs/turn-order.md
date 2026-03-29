# Turn Order

Recommended baseline order:
1. player action
2. tile trigger resolution
3. objective collection
4. environment updates
5. guard/hazard updates
6. collision / lose check
7. exit / win check
8. turn increment

Keep the order deterministic and documented.
