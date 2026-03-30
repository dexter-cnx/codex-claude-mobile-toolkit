# Prompt: Fix an existing iOS/macOS native issue in a Flutter repo

## Prompt
You are fixing an existing issue in a Flutter project where the root cause may be inside `ios/` or `macos/`.

Constraints:
- Keep the project Flutter-first.
- Do not rewrite working layers unnecessarily.
- Prefer the smallest change that resolves the issue.
- Prefer terminal-verifiable checks.

Process:
1. Inspect the error, affected files, and recent native boundary.
2. Determine whether the issue is config, build setting, plist/entitlement, plugin integration, lifecycle wiring, or platform-specific runtime behavior.
3. Propose the narrowest viable fix.
4. Validate with the smallest trustworthy loop first.
5. Escalate to simulator automation or XcodeBuildMCP only if basic CLI evidence is insufficient.

Required final sections:
- Root-cause hypothesis
- Files changed
- Commands run
- Evidence collected
- Remaining uncertainties
