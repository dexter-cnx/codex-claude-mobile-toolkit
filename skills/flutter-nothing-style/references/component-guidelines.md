# Component guidelines

## Core widget set

Start with these reusable components.

### 1. NothingStatCard

Use for a single key metric with optional label, delta, and supporting copy.

Rules:
- exactly one primary value,
- optional mono label above,
- supporting text below,
- no shadow,
- one surface contrast only.

### 2. NothingStatRow

Use for dense readouts in lists or settings-like screens.

Rules:
- left side is the mono label,
- right side is the value,
- unit sits adjacent to value in a smaller mono style,
- divider optional for repeated rows.

### 3. NothingSegmentedProgressBar

Use when a metric benefits from explicit block-based proportion.

Rules:
- always pair with numeric value,
- square-ended segments,
- overflow can exceed nominal capacity visually,
- status color applies to filled value state, not the whole card.

### 4. NothingSegmentedControl

Use for small discrete view switches.

Rules:
- 2 to 4 options only,
- active state inverts strongly,
- labels stay short,
- prefer shared padding and mono labels.

### 5. NothingPillButton

Use for primary, secondary, and destructive button styles.

Rules:
- all caps mono label,
- high contrast for primary,
- border-led secondary,
- destructive uses accent as event color.

### 6. NothingInstrumentTile

Use for gauges, dial-like status, or more expressive dashboard widgets.

Rules:
- keep one expressive tile per screen if possible,
- the rest of the layout should simplify around it,
- still provide numeric readouts and labels.

## State treatment

### Loading
Prefer:
- inline loading text,
- subtle indicator,
- placeholder structure that preserves layout.

Do not create ornamental loading screens.

### Empty
Keep it brief.
- one-line explanation,
- optional action,
- no mascot illustration.

### Error
Use explicit inline messaging and a clear retry action.

### Success
Use quiet confirmation unless success is the main event.

## Layout guidance

### Home or dashboard screens
Use:
- one hero metric,
- one or two secondary sections,
- metadata pushed to edges,
- visible contrast between primary and tertiary information.

### Settings-like screens
Use:
- mono labels,
- compact rows,
- restrained dividers,
- border-led grouping only when necessary.

### Detail screens
Use:
- strong title or metric at top,
- subsequent sections with different visual density,
- repeated component patterns.

## Common failure modes

- every card looks equally important,
- too many borders create visual noise,
- the accent is used as decoration,
- the screen feels empty because there is no intentional hierarchy,
- data visualizations exist without exact values.
