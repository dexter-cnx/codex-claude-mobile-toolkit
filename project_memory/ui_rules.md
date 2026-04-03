# UI Rules

Use this file to capture durable UI and UX implementation guidance for the target project.

## Entry template

### Rule
- **Description**:
- **Applies to**:
- **Why**:
- **Exceptions**:

---

## Seed entries

### Explicit state handling
- **Description**: Screens should make loading, empty, error, and success states explicit.
- **Applies to**: Flutter presentation layer work
- **Why**: Prevents ambiguous UX and hidden failure behavior.
- **Exceptions**: None by default; exceptions should be documented per feature.

### Dialog text-input keyboard safety
- **Description**: For dialogs with text inputs that use `AlertDialog`, prefer `scrollable: true` instead of wrapping the `content` with a nested `SingleChildScrollView`.
- **Applies to**: Flutter dialogs that contain one or more text fields
- **Why**: Prevents the soft keyboard from pushing input fields out of view and keeps dialog scrolling behavior aligned with the widget's intended layout model.
- **Exceptions**: Use a custom dialog layout only when `AlertDialog` is no longer the right shell for the interaction or when a more specialized scrolling structure is explicitly required.
