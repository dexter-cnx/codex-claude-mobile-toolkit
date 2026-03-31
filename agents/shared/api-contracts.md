# Shared API Contracts

## General HTTP rules
- define endpoints centrally,
- keep Dio usage inside remote data sources,
- map remote DTOs into domain entities,
- normalize failures into small app-specific failure types.

## Public read-mostly API rules
These are especially important for catalog-style apps.

### Preferred behavior
1. read cache when available,
2. render stale data if it improves responsiveness,
3. refresh in background,
4. allow retry without forcing a blank-screen reset,
5. treat related resources as lazy-loaded unless the UX clearly requires eager loading.

### Good fit examples
- film catalogs,
- game encyclopedias,
- static or semi-static entity browsers,
- guide and reference apps.

### Failure handling
At minimum, distinguish:
- network failure,
- timeout,
- parse failure,
- unexpected response,
- not found,
- unknown failure.
