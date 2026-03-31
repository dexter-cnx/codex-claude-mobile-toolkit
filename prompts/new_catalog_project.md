# New Catalog Project

Create or scaffold a new Flutter catalog app backed by a public read-mostly REST API.

## Goal
Build a maintainable mobile app that feels responsive under normal and imperfect network conditions.

## Mandatory stack
- Flutter
- Riverpod
- go_router
- Dio
- Material 3
- CSV-first localization
- local persistence for cache, favorites, and recently viewed

## Architecture
Use feature-first organization with:
- presentation
- domain
- data

## Initial scope
Implement:
- catalog list
- item detail
- search or filter if supported
- favorites
- recently viewed
- cache-first rendering

## Delivery constraints
- do not place Dio calls in widgets
- do not parse JSON in widgets
- keep state explicit
- use pragmatic Clean Architecture Lite boundaries
- require verification before completion

## Output expectations
Provide:
1. proposed structure
2. implementation plan
3. files created or changed
4. verification results
