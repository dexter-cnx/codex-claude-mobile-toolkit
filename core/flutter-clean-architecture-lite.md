# Flutter Clean Architecture Lite

Use a practical version of Clean Architecture.

## Rules
- Small features can omit dedicated use cases if they add no clarity.
- Repositories should exist when there is a real abstraction boundary.
- State objects should model loading, success, empty, and error where relevant.
- Widgets should receive already-shaped state, not raw transport data.
