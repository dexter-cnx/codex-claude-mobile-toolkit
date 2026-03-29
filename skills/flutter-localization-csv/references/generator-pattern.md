# Generator Pattern Reference

A CSV-first generator for Flutter localization should follow this pattern:

## Input
`assets/i18n/translations.csv`

Example:

```csv
key,en,th
app.name,ListKeep,ลิสต์คีพ
home.title,My Lists,ลิสต์ของฉัน
common.save,Save,บันทึก
```

## Rules
- first column is always `key`
- remaining columns represent locales
- each row maps one key to values in each locale
- dotted keys may be converted to nested JSON objects

## Output
Generated files under `assets/i18n/generated/`:
- `en.json`
- `th.json`
- additional locale files if more columns exist

## Recommended script behavior
- validate header structure
- tolerate empty strings where appropriate
- produce stable JSON formatting
- create parent directories if missing
- print a short summary of generated locales and key count
