# Isolate Decision Guide

## Use another isolate when

- the work is clearly CPU-heavy
- the payload is large enough to justify the transfer overhead
- the work is independent from widget tree and UI objects
- profiling evidence or code shape strongly suggests main-isolate contention

Examples:
- large JSON parsing
- image transformation
- compression
- large-scale sorting or preprocessing
- expensive file processing

## Do not jump to isolates when

- the work is small
- the real issue is duplicated execution
- the bottleneck is network latency
- the issue can be fixed by better scheduling or memoization
- the complexity cost outweighs the benefit

## Review wording

When recommending isolates, explain:
- what workload should move
- why it is likely CPU-heavy
- why a simpler fix is insufficient
