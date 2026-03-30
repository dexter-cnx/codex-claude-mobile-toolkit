## Antigravity support

This toolkit also supports **Antigravity**-style agent workflows.

Start here:
- `antigravity/README.md`
- `antigravity/rules/`
- `antigravity/workflows/`
- `antigravity/task-templates/`
- `mcp/flutter-dart-mcp-setup.md`

Recommended execution model:
1. apply durable rules,
2. choose a workflow,
3. invoke focused skills,
4. verify changes,
5. emit implementation and verification artifacts.

Antigravity usage should remain **verification-first**. No task should be marked complete without a clear summary of what changed, what was verified, and what risks remain.
