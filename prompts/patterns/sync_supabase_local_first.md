# Supabase Local-First Sync Pattern

Use this prompt when a Flutter app should remain useful offline but also synchronize user data through Supabase.

## Goal

Design or implement a sync layer where:
- local persistence is primary during runtime,
- Supabase acts as sync and continuity infrastructure,
- RLS and user ownership are explicit,
- conflict behavior is defined,
- the app can still operate in local-only mode when remote config is unavailable.

## Suggested sync phases

1. collect local dirty work
2. push local changes
3. pull remote changes since checkpoint
4. resolve conflicts
5. persist merged state locally
6. update sync checkpoint and status

## Conflict policy guidance

Choose and document one:
- newest wins,
- local wins,
- remote wins,
- field-level merge,
- or duplicate into conflict copy for manual review.

## Anti-patterns

Do not:
- make basic editing impossible while signed out,
- scatter Supabase calls throughout widgets or controllers,
- omit RLS and ownership assumptions.
