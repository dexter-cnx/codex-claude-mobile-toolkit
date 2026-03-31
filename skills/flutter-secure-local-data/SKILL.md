# Flutter Secure Local Data

## Purpose

This skill helps design client-side protected local data flows for Flutter apps that store private user-authored content.

## Operating rules

1. Keep crypto behind abstractions.
2. Do not store plaintext passwords.
3. Keep unlock/session state explicit.
4. Document what is and is not encrypted.
5. Call out restore, migration, and corruption limitations honestly.
