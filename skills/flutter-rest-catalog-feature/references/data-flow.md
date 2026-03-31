# REST Catalog Data Flow

## List flow
1. read local cache
2. render list immediately if possible
3. fetch remote collection
4. map and persist response
5. refresh visible state

## Detail flow
1. read cached detail
2. render detail immediately if possible
3. fetch remote detail
4. map and persist response
5. lazy-load related resources on demand

## Local-only state
Store locally when it improves the user experience:
- favorites
- recently viewed
- cached search results when appropriate
