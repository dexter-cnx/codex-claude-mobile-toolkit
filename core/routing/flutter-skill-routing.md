# Flutter Skill Routing Map

This document helps agents choose the smallest correct skill set for a Flutter task.

## Selection rules

### Start with one primary skill
Choose exactly one primary skill that matches the dominant task.

### Add no more than two supporting skills
Only add supporting skills when the task genuinely crosses concerns.

### Always include verification
If code changes are expected, pair the implementation skill with `flutter-testing-apps-baseline`.

## Task routing matrix

| Task shape | Primary skill | Typical supporting skills |
|---|---|---|
| create new project or refactor feature boundaries | `flutter-architecting-apps` | `flutter-theming-material3-tokens`, `flutter-localizing-apps-csv-json` |
| build or revise screen composition | `flutter-building-layouts` | `flutter-theming-material3-tokens`, `flutter-accessibility` |
| add controller/viewmodel/notifier state | `flutter-managing-state-getx` or `flutter-managing-state-riverpod` | `flutter-implementing-navigation-and-routing` |
| add routes, guards, shell navigation, deep links | `flutter-implementing-navigation-and-routing` | chosen state skill |
| consume REST API and map models | `flutter-handling-http-and-json` | `flutter-caching-data-offline-first`, `flutter-working-with-databases` |
| support offline or startup speed | `flutter-caching-data-offline-first` | `flutter-working-with-databases` |
| persist larger structured data | `flutter-working-with-databases` | `flutter-handling-http-and-json` |
| build login or edit forms | `flutter-building-forms` | chosen state skill, `flutter-accessibility` |
| add theme tokens and app-wide styles | `flutter-theming-material3-tokens` | `flutter-building-layouts` |
| add translations and locale plumbing | `flutter-localizing-apps-csv-json` | `flutter-building-forms` when forms contain labels and validation strings |
| stabilize quality gates | `flutter-testing-apps-baseline` | any implementation skill |
| heavy parsing or CPU-bound work | `flutter-handling-concurrency` | `flutter-handling-http-and-json` |
| optimize bundle size | `flutter-reducing-app-size` | `flutter-testing-apps-baseline` |
| motion and transitions | `flutter-animating-apps` | `flutter-building-layouts` |
| platform channels, native SDKs, app widgets | `flutter-native-interop` | `flutter-implementing-navigation-and-routing` |

## Tie-breakers

Use these when the task description is ambiguous.

- If the task changes folders, project structure, dependency boundaries, or repository contracts, route to `flutter-architecting-apps`.
- If the task is mostly widget tree work, route to `flutter-building-layouts`.
- If the task centers on who owns state and how it updates, route to a state skill.
- If the task moves the user from place to place, route to navigation.
- If the task touches DTOs, repositories, or remote calls, route to HTTP/JSON.
- If the task must work offline or survive relaunch, add caching or database skills.

## Required planning output for agents

Before coding, agents should emit:

1. chosen primary skill
2. supporting skills
3. files expected to change
4. verification plan
5. known risks or assumptions

