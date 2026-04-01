# คู่มือ Prompts

หน้านี้เป็นแคตตาล็อก prompt ที่สำคัญใน repo นี้ พร้อมคำแนะนำว่าควรใช้เมื่อไร

## Prompt ที่ควรใช้บ่อยที่สุด

### กลุ่มที่แนะนำให้จำก่อน

- `prompts/plan_feature.md`
- `prompts/new_feature.md`
- `prompts/new_project.md`
- `prompts/verification_pass.md`
- `prompts/update_project_memory.md`
- `prompts/finalize_mobile_change.md`
- `prompts/investigate_flutter_bug.md`
- `prompts/review_mobile_change.md`

## หมวด 1: เริ่มโปรเจกต์และวาง blueprint

- `prompts/new_project.md` ใช้ bootstrap โปรเจกต์ใหม่
- `prompts/new_project_riverpod.md` ใช้เมื่ออยากเริ่มด้วย Riverpod โดยตรง
- `prompts/new_project_blueprint.md` ใช้สร้าง blueprint ระดับ repo และ roadmap
- `prompts/new_catalog_project.md` ใช้สำหรับโปรเจกต์แนว catalog
- `prompts/new_game_project.md` ใช้กับเกมหรือ game-oriented repo

## หมวด 2: วางแผนก่อนลงมือ

- `prompts/plan_feature.md` ใช้ก่อนงาน medium/large
- `prompts/architecture_review.md` ใช้ดู impact ด้าน layer และ coupling
- `prompts/review_architecture.md` ใช้ review architecture แบบกว้าง
- `prompts/coherence_pass.md` ใช้หลังแก้ toolkit หลายส่วน

## หมวด 3: เพิ่มฟีเจอร์

- `prompts/new_feature.md` feature delivery ทั่วไป
- `prompts/new_feature_riverpod.md` feature delivery แบบ Riverpod
- `prompts/new_realtime_feature.md` งาน realtime/streaming
- `prompts/new_catalog_feature.md` งาน REST catalog
- `prompts/new_graphql_feature.md` งาน GraphQL feature
- `prompts/add_graphql_endpoint.md` เพิ่ม GraphQL endpoint หรือ schema source
- `prompts/graphql_cache_refactor.md` ปรับ cache behavior ของ GraphQL
- `prompts/new_level_pipeline_feature.md` งานที่เกี่ยวกับ level pipeline
- `prompts/new_game_feature.md` งาน game feature

## หมวด 4: UI / UX / Design

- `prompts/new_screen.md` ออกแบบหรือสร้าง screen ใหม่
- `prompts/improve_existing_ui.md` ปรับ UI เดิม
- `prompts/review_flutter_ui.md` รีวิวคุณภาพ UI
- `prompts/generate_design_tokens.md` สร้าง design tokens
- `prompts/improve_ui_with_stitch.md` ใช้ Stitch เพื่อ refine UI
- `prompts/stitch_handoff.md` แปลง design handoff ไปสู่ implementation

## หมวด 5: การ review และ verification

- `prompts/verification_pass.md` ตรวจความน่าเชื่อถือของงานก่อนปิด
- `prompts/finalize_mobile_change.md` ปิดงานให้ review-ready
- `prompts/review_mobile_change.md` review change แบบมีโครง
- `prompts/audit_mobile_repo.md` audit repo ทั้งก้อน
- `prompts/audit_existing_project.md` audit โปรเจกต์เดิม
- `prompts/repo_audit_for_integration.md` audit เพื่อ integration

## หมวด 6: Debug / Performance / Build

- `prompts/investigate_flutter_bug.md` หาสาเหตุของบั๊ก
- `prompts/review_event_loop_async.md` audit async/event loop
- `prompts/fix_event_loop_hotspots.md` แก้ hotspot ด้าน async/runtime
- `prompts/optimize_performance.md` ปรับ performance
- `prompts/analyze_flutter_build.md` วิเคราะห์ build
- `prompts/apply_approved_build_fixes.md` ใช้เมื่อต้องลง fix ที่อนุมัติแล้ว

## หมวด 7: Cache / Offline / Search / Sync / Security

- `prompts/cache_first_feature_refactor.md` retrofit cache-first ทีละ feature
- `prompts/cache_first_upgrade_existing_project.md` upgrade โปรเจกต์เดิมสู่ cache-first
- `prompts/patterns/offline_first_repository.md` pattern offline-first
- `prompts/patterns/local_search_fts.md` pattern search ด้วย SQLite FTS
- `prompts/patterns/sync_supabase_local_first.md` pattern sync แบบ local-first
- `prompts/patterns/export_backup_architecture.md` pattern export/backup
- `prompts/patterns/client_side_encryption.md` pattern encryption ฝั่ง client

## หมวด 8: Platform / Native

- `prompts/native_ios_macos_flutter_bridge.md` งาน bridge ระหว่าง Flutter กับ native
- `prompts/fix_ios_macos_native_issue.md` แก้ปัญหา native ฝั่ง iOS/macOS

## หมวด 9: Localization และ docs

- `prompts/localize_from_csv.md` localization จาก CSV
- `prompts/generate_project_docs.md` สร้างเอกสารของโปรเจกต์
- `prompts/update_project_memory.md` อัปเดตความรู้ถาวรของโปรเจกต์

## หมวด 10: Toolkit maintenance

- `prompts/self_improve_toolkit.md` เอาบทเรียนกลับเข้ามาปรับ toolkit

## วิธีเลือก prompt แบบเร็ว

### ถ้าโจทย์ยังไม่ชัด

เริ่มด้วย:

- `prompts/plan_feature.md`

### ถ้าโจทย์ชัดแล้วและพร้อมลงมือ

เริ่มด้วย:

- `prompts/new_feature.md`
- หรือ prompt เฉพาะ lane เช่น realtime / GraphQL / catalog

### ถ้าทำเสร็จแล้วแต่ยังไม่แน่ใจว่าพร้อม merge หรือยัง

ใช้:

- `prompts/verification_pass.md`
- ตามด้วย `prompts/finalize_mobile_change.md`

## Prompt ที่ถือว่าเป็น "must-use" ในงานจริง

สำหรับงานส่วนใหญ่ใน repo นี้ ผมแนะนำลำดับนี้:

1. `prompts/plan_feature.md`
2. prompt งานหลัก เช่น `new_feature.md`
3. `prompts/verification_pass.md`
4. `prompts/update_project_memory.md`
5. `prompts/finalize_mobile_change.md`

ไปต่อ: [[04-คู่มือ Skills]]

