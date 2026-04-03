# สูตรใช้งาน Overlay ใหม่

หน้านี้สรุปวิธีเริ่มใช้ของใหม่แบบใช้งานจริง ไม่ใช่แค่อ่านว่ามีอะไรเพิ่มมา

## สูตร 1: ปิดงานก่อน merge หรือ release

ใช้เมื่อ:
- งานใหญ่
- มีหลายหน้าจอ
- มี risk เรื่อง loading/error/a11y

ลำดับแนะนำ:
1. `prompts/validate_repo_release.md`
2. ถ้างานมี UI เยอะ ให้ตามด้วย `prompts/accessibility_pass.md`
3. ถ้างานพึ่ง API/async เยอะ ให้ตามด้วย `prompts/error_handling_pass.md`
4. ถ้ากังวลเรื่องโครงสร้าง feature ให้ใช้ `prompts/module_scaffold_pass.md`

ผลลัพธ์ที่ควรได้:
- checklist ชัด
- risk list ชัด
- รู้ว่ายังไม่พร้อมตรงไหน

## สูตร 2: เริ่ม session ใหม่แบบไม่ให้ agent หลุด scope

ใช้เมื่อ:
- งานแคบ
- ต้อง debug เร็ว
- ไม่อยากให้ agent อ่านทั้ง repo

ลำดับแนะนำ:
1. `prompts/context_guard.md`
2. ถ้าเป็น debug ใช้ `prompts/focused_debug.md`
3. ถ้าเป็น refactor ขอบเขตแคบ ใช้ `prompts/bounded_refactor.md`
4. ถ้าจะหยุดแล้วส่งต่องาน ใช้ `prompts/low_context_handoff.md`

## สูตร 3: วาง art direction ก่อน implement หน้าจอ

ใช้เมื่อ:
- โจทย์ UI ยังไม่ชัด
- อยากได้ visual direction ที่ลง Flutter ได้จริง
- ต้องเตรียม handoff ไป Stitch หรือ implementation

ลำดับแนะนำ:
1. `prompts/design/mobile_ui_art_direction.md`
2. `skills/flutter-art-direction/`
3. `templates/ux/mobile_theme_brief.template.md`
4. ถ้ามีระบบ design เดิม ให้อ่าน `docs/ux-ui/mobile-design-system-lane.md` ร่วมด้วย

ผลลัพธ์ที่ควรได้:
- design intent
- visual direction
- token guidance
- component guidance
- accessibility notes

## สูตร 4: เช็ก Flutter web แบบ smoke test

ใช้เมื่อ:
- ต้องการ merge gate เบา ๆ
- ไม่ต้องการเขียน E2E ยาว
- อยากเก็บ evidence แบบ screenshot/log

ลำดับแนะนำ:
1. `prompts/testing/flutter_web_playwright_smoke.md`
2. `skills/flutter-web-smoke-testing/`
3. `templates/verification/web_smoke_report.template.md`

ผลลัพธ์ที่ควรได้:
- app โหลดได้ไหม
- หน้าแรกขึ้นไหม
- CTA หลักกดได้ไหม
- console พังหนักไหม

## สูตร 5: วาง MCP server ก่อนเขียนจริง

ใช้เมื่อ:
- ต้องทำ MCP server ใหม่
- ต้อง wrap API หรือ tooling ให้ agent ใช้
- อยากออกแบบ tool inventory ให้ดีตั้งแต่ต้น

ลำดับแนะนำ:
1. `skills/mcp-server-design/`
2. สรุป service summary
3. สรุป core entities
4. วาง recommended tool inventory
5. ระบุ pagination, auth, error model

## สูตร 6: สร้าง skill ใหม่ใน toolkit

ใช้เมื่อ:
- มีงานซ้ำที่ prompt อย่างเดียวเริ่มไม่พอ
- อยากทำ skill ให้ทีมใช้ซ้ำ

ลำดับแนะนำ:
1. `skills/toolkit-skill-author/`
2. ระบุว่า skill นี้ทำอะไร / ไม่ทำอะไร
3. เขียน trigger wording ให้ชัด
4. เตรียม evaluation prompts
5. เช็กว่าไปชนกับ skill เดิมไหม

## สูตร 7: ใช้ system design notes TH ก่อนลงมือ

ใช้เมื่อ:
- feature มี backend/scale concern
- ต้องคุย trade-off ก่อน implement

ลำดับแนะนำ:
1. เปิด `obsidian/system-design-notes-th/00-system-design-home.md`
2. เลือก chapter ที่เกี่ยว
3. ใช้ `prompts/system_design_review_th.md`
4. สรุป assumptions, bottlenecks, evolution path

## สูตร 8: feature แนว content-source

ใช้เมื่อ:
- มี browse/latest/search/detail
- มี filters
- มีหลาย source

ลำดับแนะนำ:
1. `prompts/new_content_source_feature.md`
2. `skills/flutter-content-source-adapter/`
3. `skills/flutter-offline-content-feature/`
4. อ่าน `docs/patterns/source-adapter-pattern.md`
5. ถ้ามี filter schema ให้ดู `docs/patterns/filter-schema-pattern.md`

## สูตร 9: ถ้าทีมใช้หลาย assistant และอยากจัด rules ให้เป็นระบบ

ใช้เมื่อ:
- ใช้ Codex, Claude, Copilot หรือ surface อื่นร่วมกัน
- อยากแยก adapter/profile/task pack

ลำดับแนะนำ:
1. อ่าน `ai_rules/README.md`
2. เลือก adapter ให้ตรง tool
3. เลือก profile ให้ตรง stack
4. เติม task pack เฉพาะงาน

## ข้อจำง่าย

- ถ้างานเป็นการ “คุมคุณภาพ” ใช้ repo discipline pack
- ถ้างานเป็นการ “คุมขอบเขต session” ใช้ AI context pack
- ถ้างานเป็นการ “route งาน Flutter ให้แคบลง” ใช้ Flutter skills pack
- ถ้างานเป็นการ “คุย architecture ก่อนเขียน” ใช้ system design notes TH
- ถ้างานเป็นการ “วาง UI direction หรือ smoke test เว็บ” ใช้ Anthropic-inspired overlay
