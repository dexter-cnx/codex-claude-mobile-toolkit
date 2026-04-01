# คู่มือ Skills

หน้านี้สรุปว่าควรเลือก skill ยังไง และ skills ใน repo นี้แบ่งได้เป็นกี่กลุ่ม

## หลักการเลือก skill

ใช้ skill เมื่อ:

- งานแคบพอจะนิยามได้ชัด
- ต้องการ procedure เฉพาะทาง
- ไม่ต้องการ orchestration ทั้ง flow

อย่าเริ่มจากการเปิดทุก skill พร้อมกัน

ให้เลือก:

1. skill หลัก 1 ตัว
2. skill รองอีก 1 ตัวถ้าจำเป็นจริง

## กลุ่ม skill หลัก

### 1. Bootstrap และ scaffolding

- `flutter-project-bootstrap`
- `flutter-new-project-bootstrap`
- `flutter-project-scaffold-riverpod-go-router`
- `flutter-feature-scaffold`

ใช้เมื่อ:

- เริ่ม repo ใหม่
- สร้างโครง feature
- reset โครงสร้างโปรเจกต์ให้เป็นมาตรฐาน

### 2. Architecture และ conventions

- `flutter-repo-conventions`
- `flutter-clean-architecture-lite`
- `flutter-simple-clean-architecture-guard`
- `flutter-state-management-pattern`
- `flutter-review-architecture`
- `flutter-existing-project-audit`

ใช้เมื่อ:

- งานเริ่ม drift
- ไม่แน่ใจว่า layer วางถูกไหม
- ต้องการดูภาพรวม architecture

### 3. Review / finalize / audit

- `flutter-finalize-change`
- `flutter-audit-repo`
- `flutter-review-change`
- `flutter-pr-reviewer`
- `flutter-review`
- `flutter-review-testing`
- `flutter-review-localization`
- `flutter-review-platform-config`
- `flutter-commit-readiness`

ใช้เมื่อ:

- จะ merge
- จะส่ง review
- จะทำ audit

### 4. Data / API / cache / offline

- `flutter-api-integration-pattern`
- `api-integration`
- `flutter-cache-first-rendering`
- `flutter-offline-first`
- `flutter-local-search-fts`
- `flutter-supabase-sync`
- `flutter-secure-local-data`
- `flutter-export-backup`

ใช้เมื่อ:

- งานมี backend
- ต้องการ local-first
- ต้องการ search/sync/security

### 5. Realtime / source adapter / multi-surface / TV

- `flutter-realtime-feature-pattern`
- `flutter-source-adapter-pattern`
- `flutter-shared-core-multi-surface`
- `flutter-tv-ui-pattern`

ใช้เมื่อ:

- มี stream/live updates
- มีหลาย provider
- มีหลาย surface
- target เป็น TV / D-pad / keyboard-driven UI

### 6. GraphQL lane

- `flutter-graphql-feature`
- `flutter-graphql-schema-codegen`
- `flutter-graphql-cache-strategy`

ใช้เมื่อ:

- feature เป็น GraphQL
- มี schema/codegen
- ต้องจัดการ cache และ stale-refresh

### 7. UI / UX / design system

- `flutter-ux-ui-design-system`
- `flutter-component-contracts`
- `flutter-design-review`
- `flutter-accessibility-audit`
- `flutter-ui-screen-implementation`
- `mobile-ui-refinement`

ใช้เมื่อ:

- มีงานหน้าจอ
- ต้องการ design consistency
- ต้องการ a11y

### 8. Performance / build / runtime

- `flutter-event-loop-audit`
- `flutter-performance-audit`
- `flutter-build-orchestrator`
- `flutter-build-fixer`
- `flutter-build-benchmark`
- `flutter-android-build-analyzer`
- `flutter-ios-runner-analyzer`
- `flutter-dart-compilation-analyzer`
- `flutter-web-build-analyzer`

ใช้เมื่อ:

- แอปหน่วง
- build ช้า
- compile นาน
- runtime มี jank

### 9. Localization

- `flutter-localization-csv`
- `flutter-localization-csv-pipeline`

### 10. Native Apple

- `flutter-apple-native-loop`

### 11. Documentation / notes

- `obsidian-doc-writer`

## สูตรจับคู่ prompt + skill

### เพิ่ม feature ทั่วไป

- prompt: `prompts/new_feature.md`
- skill: `flutter-feature-scaffold`

### งาน architecture review

- prompt: `prompts/architecture_review.md`
- skill: `flutter-review-architecture`

### งานปิดก่อน merge

- prompt: `prompts/finalize_mobile_change.md`
- skill: `flutter-finalize-change`

### งาน GraphQL

- prompt: `prompts/new_graphql_feature.md`
- skill: `flutter-graphql-feature`

### งาน realtime

- prompt: `prompts/new_realtime_feature.md`
- skill: `flutter-realtime-feature-pattern`

## วิธีอ่าน skill หนึ่งตัว

เวลาเปิด skill หนึ่งตัว ให้ดู 4 อย่าง:

1. ใช้เมื่อไร
2. ห้ามใช้เมื่อไร
3. verification ที่ skill คาดหวัง
4. output ที่ต้องได้

## หลักคิดสำคัญ

- prompt = lane
- skill = tool เฉพาะทางใน lane นั้น
- อย่าใช้ skill แทน pipeline ถ้างานมีหลาย phase

ไปต่อ: [[05-สูตรใช้งานตามสถานการณ์]]

