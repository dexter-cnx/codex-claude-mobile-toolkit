# Feature Cache Audit

## Feature name

## Current first-render behavior

- [ ] blocks on network before showing content
- [ ] can already show cached/local data
- [ ] mixes loader, empty, and error states destructively
- [ ] uses background refresh already

## Data sources

- Remote source:
- Local source:
- Snapshot key/collection/table:

## State management

- [ ] Riverpod
- [ ] GetX
- [ ] Bloc/Cubit
- [ ] Provider
- [ ] ValueNotifier
- [ ] Other:

## Current race-condition risks

- [ ] optimistic like/favorite/bookmark may be overwritten by refresh
- [ ] refresh failure may wipe current content
- [ ] widget triggers duplicated refreshes
- [ ] cache write timing is unclear
- [ ] no distinction between visible state and pending actions

## Recommended refactor boundary

- [ ] repository
- [ ] use case
- [ ] notifier/controller/viewmodel
- [ ] state model
- [ ] widget loader/error treatment

## Proposed cache-first sequence

1.
2.
3.
4.
5.

## Pending mutation types

- [ ] like/unlike
- [ ] favorite/unfavorite
- [ ] bookmark/unbookmark
- [ ] archive/unarchive
- [ ] mark read/unread
- [ ] other:

## Test coverage gap

- [ ] no cache-first test
- [ ] no refresh error preservation test
- [ ] no optimistic mutation merge test
- [ ] no persistence verification test

## Notes
