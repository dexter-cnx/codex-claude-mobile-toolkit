# iOS/macOS debug playbook for Flutter repos

## Common categories
- plist mismatch
- entitlement mismatch
- capability not enabled
- plugin registration issue
- scheme or target mismatch
- simulator-only behavior
- macOS-specific permission or sandbox issue

## Debug sequence
1. Reproduce narrowly
2. Check native boundary files
3. List schemes / targets
4. Run a narrow build
5. Capture runtime logs if needed
6. Capture screenshot if behavior is visual
7. Report verified scope
