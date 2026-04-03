# Error Handling Review Checklist

## State coverage
- [ ] Loading state exists
- [ ] Success state exists
- [ ] Empty state exists
- [ ] Recoverable failure state exists

## Recovery
- [ ] Retry path exists when appropriate
- [ ] User can understand what to do next
- [ ] Failures are not silently swallowed

## Technical resilience
- [ ] Transport failures are normalized
- [ ] Parsing or contract failures are considered
- [ ] Telemetry/logging hook exists
- [ ] Partial failure behavior is understood
