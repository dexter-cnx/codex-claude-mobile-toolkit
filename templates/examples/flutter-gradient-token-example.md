# Example: Flutter Gradient Token Mapping

This is a reference example for how a toolkit consumer might translate `tokens/gradient-tokens.example.json` into Flutter code.

```dart
import 'package:flutter/material.dart';

class AppGradients {
  const AppGradients._();

  static const LinearGradient heroBrand = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[
      Color(0xFF5B8CFF),
      Color(0xFF7A5CFF),
      Color(0xFFB45CFF),
    ],
    stops: <double>[0.0, 0.55, 1.0],
  );

  static const RadialGradient accentGlowPrimary = RadialGradient(
    center: Alignment(0.2, -0.3),
    radius: 0.95,
    colors: <Color>[
      Color(0x667A5CFF),
      Color(0x225B8CFF),
      Color(0x005B8CFF),
    ],
    stops: <double>[0.0, 0.55, 1.0],
  );

  static const SweepGradient ringFocus = SweepGradient(
    startAngle: 0.0,
    endAngle: 6.283185307179586,
    colors: <Color>[
      Color(0xFF5B8CFF),
      Color(0xFFB45CFF),
      Color(0xFF5B8CFF),
    ],
    stops: <double>[0.0, 0.65, 1.0],
  );
}
```

## Notes

- Keep token names semantic.
- Keep a solid-color fallback for any critical component.
- Avoid creating many one-off gradients in widget files.
- Centralize gradient definitions in the design-system layer.

