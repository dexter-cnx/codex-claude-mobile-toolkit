# Profile: Flutter GetX Strict

Apply this profile when the project uses GetX and wants strong architectural discipline.

## Rules
- Use GetX for presentation orchestration, not for domain logic.
- Controllers coordinate UI state, navigation intents, and use-case calls.
- Business rules live in use cases or domain services.
- Bindings wire dependencies close to feature entry points.
- Avoid global mutable state unless truly app-wide and justified.
- Avoid giant controllers spanning multiple unrelated screens.

## File placement
Typical feature split:

```text
features/<feature_name>/
  presentation/
    bindings/
    controllers/
    pages/
    widgets/
  domain/
    entities/
    repositories/
    usecases/
  data/
    datasources/
    dtos/
    mappers/
    repositories/
```

## Navigation
- Keep routes centralized.
- Use named route constants or typed equivalents.
- Avoid hidden navigation side effects inside widgets.
