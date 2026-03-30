# When to use XcodeBuildMCP

## Use plain CLI first when
- you only need schemes
- you only need a build
- you only need a test run
- logs are already easy to access

## Use XcodeBuildMCP when
- you need simulator launch automation
- you need screenshots as evidence
- you need runtime logs from live app behavior
- you need richer target/scheme inspection
- you need UI interaction loops

## Decision rule
If `xcodebuild` plus normal shell tools can prove the change quickly, stay on CLI.
If proof requires active simulator orchestration, escalate to XcodeBuildMCP.
