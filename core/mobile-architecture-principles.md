# Mobile Architecture Principles

- Separate presentation, domain, and data concerns.
- The presentation layer should orchestrate state and rendering, not business logic.
- Domain abstractions should exist when they improve clarity or future change tolerance.
- The data layer owns DTOs, parsing, persistence, and transport concerns.
- Avoid over-layering tiny features.
