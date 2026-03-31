# flutter-accessibility-audit

## Purpose
Audit a Flutter screen or feature for accessibility risks.

## When to use
Use this skill when:
- a screen is close to release,
- forms or interactions were added,
- UI was redesigned,
- a structured a11y pass is needed.

## Review areas
- text readability
- contrast risk
- tappable target size
- focus order
- screen-reader labeling risk
- form error clarity
- semantics for icons and controls
- keyboard and input flow
- motion or distraction risk where relevant
- localization impact on usability

## Procedure
1. Identify the main user tasks on the screen.
2. Check whether core actions are easy to perceive and reach.
3. Check whether icons and controls need semantics labels.
4. Check whether small text or dense layouts reduce usability.
5. Check whether errors are communicated clearly.
6. Check whether long translated strings could reduce readability or cause truncation.
7. Summarize critical, moderate, and minor risks.

## Output contract
Produce:
- audit summary
- risk list by severity
- recommended remediation
- implementation notes
- verification gaps

## Verification
Use code evidence where possible.
If runtime accessibility inspection was not available, state that explicitly.
