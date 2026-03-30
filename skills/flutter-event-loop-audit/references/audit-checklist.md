# Audit Checklist

## Startup
- is first meaningful paint delayed by non-critical work?
- are independent startup tasks unnecessarily serialized?
- is local data available but not rendered early?

## Lifecycle
- are side effects triggered from `build()`?
- does initialization rerun unexpectedly?
- are post-frame callbacks used only when truly necessary?

## Async flow
- are independent awaits run sequentially?
- are requests deduplicated?
- do refresh and pagination protect against overlap?

## Main isolate load
- are large transforms done synchronously?
- are search/filter/sort operations debounced or cached?
- is image/file work too close to render-sensitive moments?

## State behavior
- do listeners trigger redundant rebuilds?
- does append replace full list state?
- are provider invalidations creating loops?

## Output
- identify must-fix issues first
- prefer smallest safe fixes
- call out good patterns explicitly
