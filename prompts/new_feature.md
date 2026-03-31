# New Feature Delivery Prompt

Use this prompt when implementing or planning a new feature in a Flutter-first product repository.

## Capability checklist

Before implementation, answer:
- Must this feature work offline?
- Is local data the source of truth or a cache?
- Will the dataset grow enough to justify indexed search?
- Is cloud sync needed now, later, or never?
- Does the user need export / backup or restore?
- Does this feature require protected local data?
- Is any part of this generic enough to belong in the toolkit rather than the product repo?

## Routing guidance

Use the following when appropriate:
- offline-first feature -> `prompts/patterns/offline_first_repository.md`
- local indexed search -> `prompts/patterns/local_search_fts.md`
- local-first sync -> `prompts/patterns/sync_supabase_local_first.md`
- backup / export -> `prompts/patterns/export_backup_architecture.md`
- protected local data -> `prompts/patterns/client_side_encryption.md`
