# State Shape

A GraphQL catalog feature commonly needs more than a simple loading flag.

Useful state often includes:

- visible data,
- isLoading,
- isRefreshing,
- isStale,
- source,
- error,
- empty-result metadata.

The goal is to preserve useful visible content while allowing background refresh and partial failures.
