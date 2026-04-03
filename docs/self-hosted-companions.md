# Self-hosted companions

This document explains which self-hosted ideas are worth documenting as companions to the toolkit.

## Positioning

Self-hosted services should support one of four jobs:
1. sync,
2. retrieval,
3. bookmarking,
4. agent control support.

If a service does not improve one of those jobs, it is probably not worth documenting in the toolkit.

## Good candidates for documentation

### Personal agent gateway
Use when:
- you want a private control surface
- you switch between multiple machines
- you need a stable entrypoint for local and remote workflows

Document as:
- concept
- trade-offs
- optional setup notes
- security checklist

### Bookmark / reading capture system
Use when:
- you do heavy architecture research
- you want reusable source capture
- you need tagged references for later synthesis

Document as:
- research intake workflow
- tagging convention
- export-to-repo note pattern

### WebDAV / sync backend
Use when:
- notes or reference libraries need reliable sync
- external tools share a common storage path

Document as:
- supported use cases
- backup expectations
- security considerations
- fallback plan

## What not to do

Do not:
- prescribe a single hosted provider
- require self-hosting for normal toolkit use
- mix personal billing advice into repository docs
- treat optional services as first-class build dependencies

## Security baseline

Any companion service documentation should include:
- secret handling rules
- network exposure rules
- backup expectations
- least-privilege guidance
- failure fallback behavior

## Documentation pattern

For every companion service, include:
- problem solved
- why it is optional
- minimum viable setup
- failure modes
- repository artifact it supports
- exit strategy if the service is removed
