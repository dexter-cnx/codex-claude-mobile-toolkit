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

## สูตร 10: วางหน้าจอแนว Nothing-inspired ให้ไม่หลุดธีม

ใช้เมื่อ:
- อยากได้ UI แนว monochrome / industrial
- อยากคุม hierarchy ด้วย typography และ spacing
- อยากได้ token และ component spec ก่อน implement หนัก

ลำดับแนะนำ:
1. อ่าน `docs/ux-ui/nothing-inspired-design-lane.md`
2. ใช้ `prompts/generate_nothing_tokens.md`
3. ใช้ `skills/flutter-nothing-style/`
4. ทำ screen ด้วย `prompts/implement_nothing_screen.md`
5. ปิดงานด้วย `prompts/review_nothing_flutter_ui.md`

ผลลัพธ์ที่ควรได้:
- token layer ที่ชัด
- component spec ที่ reuse ได้
- หน้าจอที่ distinct แต่ยัง accessible

## สูตร 11: ทำ gradient ให้สวยและยัง review ได้

ใช้เมื่อ:
- UI มี hero surface หรือ glow/ring/progress
- gradient เริ่มรกหรือ hardcode กระจาย
- ต้องคุม performance และ contrast ไปพร้อมกัน

ลำดับแนะนำ:
1. อ่าน `docs/ux-ui/gradient-system-lane.md`
2. ใช้ `prompts/patterns/gradient_surface_pattern.md`
3. ใช้ `skills/flutter-gradient-system/`
4. ถ้างานมีอยู่แล้วและอยาก polish เพิ่ม ใช้ `prompts/improve_gradient_ui.md`
5. ปิดด้วย `core/checklists/gradient-quality-checklist.md`

## สูตร 12: ออกแบบ AI UX ให้เชื่อใจได้และ resume ได้

ใช้เมื่อ:
- feature มี AI summary / recommendation / ranking
- ผู้ใช้ต้องรู้ว่าระบบคิดหรือสรุปอย่างไร
- workflow ต้องกลับมาทำต่อได้

ลำดับแนะนำ:
1. อ่าน `docs/patterns/README.md`
2. เลือก pattern หลักจาก:
   - `docs/patterns/epistemic-disclosure.md`
   - `docs/patterns/algorithmic-transparency.md`
   - `docs/patterns/historical-trails.md`
   - `docs/patterns/command-palette.md`
   - `docs/patterns/programmable-notes.md`
3. ใช้ `prompts/design_ai_feature_with_patterns.md`
4. ใช้ `skills/ai-ux-patterns/`
5. ทบทวนด้วย `templates/ai-feature-pattern-review.md`

## สูตร 13: จัด operator stack และ Obsidian memory ให้เป็นระบบ

ใช้เมื่อ:
- ทีมใช้หลาย assistant/tools
- มี personal notes คู่กับ project memory
- อยากทำ handoff ข้าม session ให้แน่นขึ้น

ลำดับแนะนำ:
1. อ่าน `docs/toolbox-integration-assessment.md`
2. ใช้ `prompts/plan_operator_stack.md`
3. สรุปของจริงด้วย `prompts/capture_operator_stack.md`
4. ใช้ `skills/agent-operator-stack/`
5. ถ้ามีโน้ตนอก repo ที่ต้อง promote เข้า repo ใช้ `skills/obsidian-agent-memory-ops/`
6. บันทึกผลลง `project_memory/tooling-stack.md`

- ถ้างานเป็นการ “ทำหน้าจอแนว monochrome/industrial” ใช้ Nothing-inspired overlay
- ถ้างานเป็นการ “ทำ gradient ให้เป็นระบบ” ใช้ Gradient system pack
- ถ้างานเป็นการ “ออกแบบ AI UX ที่อธิบายได้และ resume ได้” ใช้ AI UX pattern pack
- ถ้างานเป็นการ “จัด operator stack / Obsidian / multi-agent flow” ใช้ Toolbox and operator-stack pack
