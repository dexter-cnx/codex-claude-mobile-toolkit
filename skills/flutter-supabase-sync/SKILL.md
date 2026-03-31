# Flutter Supabase Local-First Sync

## Purpose

This skill helps add optional Supabase synchronization to a Flutter app that should still function with local-first behavior.

## Operating rules

1. Local data remains usable without Supabase.
2. Supabase calls stay outside presentation code.
3. Row ownership and RLS are explicit.
4. Conflict policy is documented.
5. Sync status is user-visible where product value warrants it.
