# แผนที่ repo และส่วนประกอบ

หน้านี้อธิบายว่าแต่ละส่วนของ toolkit ใช้ทำอะไร

## โครงสร้างหลักที่ต้องเข้าใจ

### `AGENTS.md`

ไฟล์กติกาหลักของ repo

ใช้สำหรับ:

- architecture rules
- UI rules
- localization rules
- verification baseline
- skill usage rules
- สิ่งที่ห้ามทำ

### `README.md`

หน้าภาพรวมของ repo

ใช้สำหรับ:

- เข้าใจ operating model
- ดู entrypoints หลัก
- ดู assets สำคัญตาม lane

### `docs/`

คลังความรู้, policy, playbook, และ rationale

ตัวอย่างเอกสารสำคัญ:

- `docs/skill-workflow-map.md`
- `docs/workflow-pipelines.md`
- `docs/pipeline-vs-skill.md`
- `docs/verification-workflow.md`
- `docs/project-memory-system.md`
- `docs/runtime-matrix.md`
- `docs/adoption-playbook.md`
- `docs/stitch-handoff-playbook.md`

### `prompts/`

entrypoints ของงานแบบ end-to-end

ใช้เมื่อ:

- ต้องการ workflow ชัดเจน
- ต้องการ output เป็นขั้นตอน
- ต้องการบังคับให้ review หรือ verify

ตัวอย่าง:

- `prompts/new_feature.md`
- `prompts/plan_feature.md`
- `prompts/verification_pass.md`
- `prompts/finalize_mobile_change.md`

### `skills/`

ทักษะเฉพาะงานที่แคบกว่า prompt

ใช้เมื่อ:

- รู้แล้วว่าจะทำงานอะไร
- ต้องการ procedure แบบ focus
- ไม่ต้องการ orchestration ทั้ง flow

ตัวอย่าง:

- `skills/flutter-feature-scaffold/`
- `skills/flutter-cache-first-rendering/`
- `skills/flutter-pr-reviewer/`
- `skills/flutter-event-loop-audit/`

### `templates/`

แม่แบบเอกสารผลลัพธ์

ใช้สำหรับ:

- verification report
- audit report
- architecture note
- design handoff
- project memory update

### `project_memory/`

ชั้นความรู้ถาวรของโปรเจกต์

มีไว้เก็บ:

- architecture decisions
- glossary
- UI rules
- known issues
- handoff ล่าสุด

### `antigravity/`

workflow shell แบบเข้มกว่า prompt ปกติ

เหมาะกับ:

- งานหลายเฟส
- งานที่ต้องมี artifact ชัด
- งานที่ต้องการ sequencing เข้ม

### `core/`

กติกาและ routing แบบ reusable

เหมาะกับ:

- แยก policy ที่ใช้ซ้ำ
- ไม่ต้อง copy กติกาซ้ำในหลายไฟล์

### `agents/`

ส่วนเสริมเฉพาะ surface ของ agent

ใช้เมื่อ:

- ต้องการปรับวิธีทำงานตาม Codex / Claude / Antigravity

### `schemas/`

schema ที่ใช้ validate artifact หรือสถานะ

### `scripts/`

สคริปต์ช่วยงานซ้ำ เช่น codegen, schema refresh, iOS/macOS helpers

### `tokens/`

asset สำหรับ design token และ design-system lane

### `examples/`

ตัวอย่างอ้างอิงสำหรับ pattern บางแบบ

### `mcp/`

คำแนะนำการใช้งาน MCP และ runtime tooling

### `plugins/`

พื้นที่ plugin integration

## วิธีเลือกว่าจะเริ่มตรงไหน

ถ้างานของคุณคือ:

- "อยากรู้ว่าต้องเริ่มยังไง" -> `README.md`
- "อยากรู้ว่ามีกฎอะไรห้ามทำ" -> `AGENTS.md`
- "อยากรู้ว่าควรใช้ prompt ไหน" -> `docs/skill-workflow-map.md`
- "อยากรู้ว่าทำไมต้องใช้ pipeline" -> `docs/workflow-pipelines.md`
- "อยากรู้ว่า prompt ต่างจาก skill ยังไง" -> `docs/pipeline-vs-skill.md`

ไปต่อ: [[02-โฟลว์ทำงานมาตรฐาน]]

