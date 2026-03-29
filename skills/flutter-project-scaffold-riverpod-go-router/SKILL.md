# Skill: Flutter Project Scaffold (Riverpod + go_router)

## Purpose
Use this skill when creating or refreshing the baseline structure of a Flutter project that follows the toolkit default preset.

## Applies when
- starting a new Flutter app
- modernizing an older project to the default preset
- establishing a clean baseline before feature work

## Default stack
- Flutter
- Riverpod
- go_router
- Isar
- easy_localization
- CSV-first i18n source
- Material 3

## Responsibilities
This skill should help establish:
- app bootstrap
- router setup
- provider layout
- local persistence setup
- localization setup
- starter screen structure
- project folder conventions

## Rules
- keep the architecture pragmatic
- avoid usecase boilerplate for trivial CRUD
- keep route definitions centralized
- keep repository logic outside widgets
- prefer focused feature providers over global state piles
- keep the generated project easy to extend

## Expected outputs
- `pubspec.yaml`
- starter folder tree
- `bootstrap.dart`
- `app.dart`
- route setup
- provider setup
- Isar initialization
- localization CSV and generator script
- starter screens and widgets

## Finish check
Before finishing:
- does the project compile in principle?
- are stack choices consistent across files?
- is localization wired through the CSV-first workflow?
- are route names and provider names readable?
