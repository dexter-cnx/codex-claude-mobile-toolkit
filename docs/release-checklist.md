# Release and merge readiness checklist

Use this checklist before claiming a change is ready for merge or release.

## Code quality

- formatting is clean
- analyzer issues are addressed or explicitly documented
- tests were run or the gap is stated
- architecture boundaries remain coherent
- no obvious dead code or accidental debug leftovers remain

## Product quality

- user-facing text follows localization policy
- loading, empty, error, and success states were considered
- accessibility concerns were reviewed for UI changes
- route or state transitions were smoke-checked where relevant

## Platform quality

- platform-specific files were reviewed if touched
- native boundary verification is reported for `ios/` or `macos/`
- build or runtime risks are explicit

## Delivery quality

- a verification report exists
- assumptions are explicit
- unresolved risks are explicit
- follow-up work is separated from the current task
- commit scope is clear
