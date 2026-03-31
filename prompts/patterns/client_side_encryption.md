# Client-Side Encryption Pattern

Use this prompt when a Flutter app stores user-authored or personal local data that should be protected at rest on the client.

## Goal

Design or implement secure local data handling where:
- encryption responsibilities are isolated,
- secrets are not casually exposed,
- unlock behavior is explicit,
- backup / migration implications are documented.

## Design rules

- Keep crypto logic behind dedicated abstractions.
- Do not spread key handling across presentation code.
- Do not store plaintext passwords.
- Document session unlock rules and timeout behavior if relevant.
