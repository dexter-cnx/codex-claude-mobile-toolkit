# Flutter Export and Backup

## Purpose

This skill helps add export, backup, import, and restore flows to Flutter apps in a maintainable and user-understandable way.

## Operating rules

1. Keep export/import outside widgets.
2. Define whether restore merges or replaces.
3. Validate before destructive writes.
4. Version backup formats when possible.
5. Surface errors clearly.
