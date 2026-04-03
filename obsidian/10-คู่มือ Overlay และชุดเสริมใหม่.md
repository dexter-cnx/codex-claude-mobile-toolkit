# คู่มือ Overlay และชุดเสริมใหม่

หน้านี้สรุปชุดเสริมใหม่ที่ถูกเพิ่มเข้ามาใน repo ช่วงหลัง เพื่อให้รู้ว่าแต่ละชุดมีหน้าที่อะไร และควรหยิบใช้เมื่อไร

## 1. Repo discipline pack

ใช้เมื่ออยากเพิ่มความเข้มของงาน review ก่อนปล่อยจริง

ของสำคัญ:
- `docs/repo_discipline/`
- `prompts/validate_repo_release.md`
- `prompts/accessibility_pass.md`
- `prompts/error_handling_pass.md`
- `prompts/module_scaffold_pass.md`
- `skills/repo/release_readiness/`
- `templates/checklists/`
- `scripts/validate_toolkit.ps1`
- `scripts/validate_toolkit.sh`

เหมาะกับ:
- ก่อน release
- ก่อน merge งานใหญ่
- ตอนสงสัยว่าคุณภาพ loading/empty/error/a11y ยังไม่แน่น

## 2. AI context pack

ใช้เมื่ออยากคุม session ของ agent ให้กระชับ ไม่ฟุ้ง และส่งต่อง่าย

ของสำคัญ:
- `docs/ai-context-management.md`
- `docs/ai-working-rules.md`
- `docs/checklists/ai-session-checklist.md`
- `prompts/context_guard.md`
- `prompts/focused_debug.md`
- `prompts/bounded_refactor.md`
- `prompts/low_context_handoff.md`

เหมาะกับ:
- งาน debug ที่ไม่อยากให้ agent สำรวจทั้ง repo
- งาน refactor ที่ขอบเขตต้องแน่น
- งานที่ต้องทำ handoff ต่อ session ถัดไป

## 3. Content-source / Mangayomi lane

ใช้เมื่อ feature มี browse/latest/search/detail, filters, pagination, และอาจมีหลาย content provider

ของสำคัญ:
- `docs/mangayomi-toolkit-integration-notes.md`
- `docs/patterns/source-adapter-pattern.md`
- `docs/patterns/filter-schema-pattern.md`
- `prompts/new_content_source_feature.md`
- `skills/flutter-content-source-adapter/`
- `skills/flutter-offline-content-feature/`
- `schemas/filter_schema.schema.json`

เหมาะกับ:
- app แนว manga/content/browser
- งานที่ต้อง normalize หลาย source
- งานที่ต้องรองรับ cache/offline/restore-safe IDs

## 4. Flutter skills pack

ใช้เมื่ออยาก route งาน Flutter ให้ลง skill ที่ตรงและแคบขึ้น

ของสำคัญ:
- `core/routing/flutter-skill-routing.md`
- `prompts/plan_flutter_feature_with_skill_router.md`
- `docs/flutter-skills-pack/`
- `skills/flutter-architecting-apps/`
- `skills/flutter-building-layouts/`
- `skills/flutter-managing-state-riverpod/`
- `skills/flutter-handling-http-and-json/`
- `skills/flutter-working-with-databases/`
- `skills/flutter-testing-apps-baseline/`

เหมาะกับ:
- งาน Flutter ที่รู้แล้วว่าติดปัญหาหลักด้านไหน
- งานที่อยากมี primary skill + supporting skill แบบชัดเจน

## 5. AI rules pack

ใช้เมื่ออยากแยกกติกาเป็นชั้น ๆ แทนการยัดทุกอย่างไว้ในไฟล์ root เดียว

ของสำคัญ:
- `ai_rules/flutter_master_rules.md`
- `ai_rules/flutter_rules_10k.md`
- `ai_rules/flutter_rules_4k.md`
- `ai_rules/flutter_rules_1k.md`
- `ai_rules/adapters/`
- `ai_rules/profiles/`
- `ai_rules/packs/`

เหมาะกับ:
- repo ที่ใช้หลาย surface หรือหลาย assistant
- ทีมที่อยากจัดระเบียบ policy ให้ reuse ได้

## 6. System design notes TH

ใช้เมื่ออยากคุย architecture, scale, bottleneck, trade-off ก่อนลงมือ implement

ของสำคัญ:
- `obsidian/system-design-notes-th/`
- `prompts/system_design_review_th.md`
- `skills/system-design-notes/README.md`
- `docs/system-design-notes-pack-integration.md`

เหมาะกับ:
- งาน backend/mobile system design
- งาน design review
- งาน feature ที่มี scale concern

## 7. Anthropic-inspired overlay

ใช้เมื่ออยากเสริมคุณภาพด้าน design direction, smoke test เว็บ, MCP design, และการสร้าง skill

ของสำคัญ:
- `docs/ux-ui/mobile-design-direction-lane.md`
- `docs/research/anthropic-skills-assessment.md`
- `docs/integrations/anthropic-skills-adoption-plan.md`
- `prompts/design/mobile_ui_art_direction.md`
- `prompts/testing/flutter_web_playwright_smoke.md`
- `skills/flutter-art-direction/`
- `skills/flutter-web-smoke-testing/`
- `skills/mcp-server-design/`
- `skills/toolkit-skill-author/`

เหมาะกับ:
- งานที่ product notes ยังไม่พอจะลง UI จริง
- งานที่ต้องเช็ก Flutter web แบบ smoke pass
- งานออกแบบ MCP server ก่อนเขียน
- งานสร้าง skill ใหม่ใน toolkit

## วิธีเลือกชุดที่ควรเริ่ม

- ถ้าจะปิดงานให้พร้อมปล่อย: เริ่มที่ repo discipline pack
- ถ้าจะคุม session ให้สั้นและแม่น: เริ่มที่ AI context pack
- ถ้าจะทำ feature แนว content browser: เริ่มที่ Content-source lane
- ถ้าจะ route งาน Flutter ให้แคบ: ใช้ Flutter skills pack
- ถ้าจะจัดกติกาหลาย assistant: ใช้ AI rules pack
- ถ้าจะคุย architecture ก่อน implement: ใช้ System design notes TH
- ถ้าจะวางทิศทาง UI หรือ smoke test เว็บ: ใช้ Anthropic-inspired overlay

ไปต่อ: [[11-สูตรใช้งาน Overlay ใหม่]]

## 8. Nothing-inspired design overlay

ใช้เมื่ออยากได้ visual language แบบ monochrome, industrial, typography-led โดยยังรักษา Flutter UX/UI discipline เดิมไว้

ของสำคัญ:
- `docs/ux-ui/nothing-inspired-design-lane.md`
- `docs/legal/source-attribution-nothing-skill.md`
- `prompts/generate_nothing_tokens.md`
- `prompts/implement_nothing_screen.md`
- `prompts/review_nothing_flutter_ui.md`
- `skills/flutter-nothing-style/`
- `templates/nothing-component-spec.md`
- `examples/flutter_nothing_theme_extensions.dart`
- `tokens/nothing/`

เหมาะกับ:
- dashboard
- settings / utility app
- hardware-adjacent product
- หน้าจอที่ hierarchy ต้องมากับ typography และ spacing มากกว่าสี

## 9. Gradient system pack

ใช้เมื่อ gradient ต้องถูกจัดการเป็นระบบ ไม่ใช่ใส่สวย ๆ แบบ ad hoc

ของสำคัญ:
- `docs/ux-ui/gradient-system-lane.md`
- `docs/ux-ui/gradient-performance-and-accessibility.md`
- `core/checklists/gradient-quality-checklist.md`
- `prompts/improve_gradient_ui.md`
- `prompts/patterns/gradient_surface_pattern.md`
- `skills/flutter-gradient-system/`
- `templates/design-handoff-gradient.template.md`
- `tokens/gradient-tokens.example.json`

เหมาะกับ:
- hero surfaces
- glow, ring, progress, premium cards
- งานที่ต้องคุมทั้ง brand expression และ accessibility/performance

## 10. AI UX pattern pack

ใช้เมื่อ feature มี AI, agent, recommendation, command palette, หรือ workflow ที่ต้อง explain และ resume ได้ดี

ของสำคัญ:
- `agents/shared/patterns-ai-ux.md`
- `docs/patterns/README.md`
- `docs/patterns/epistemic-disclosure.md`
- `docs/patterns/algorithmic-transparency.md`
- `docs/patterns/historical-trails.md`
- `docs/patterns/command-palette.md`
- `docs/patterns/programmable-notes.md`
- `prompts/design_ai_feature_with_patterns.md`
- `skills/ai-ux-patterns/`
- `templates/ai-feature-pattern-review.md`

เหมาะกับ:
- AI output surfaces
- explainability-heavy UX
- internal tooling
- knowledge workflows

## 11. Toolbox and operator-stack pack

ใช้เมื่ออยากทำ workflow ฝั่ง operator / multi-agent / Obsidian / self-hosted helpers ให้กลายเป็นระบบใน repo

ของสำคัญ:
- `docs/toolbox-integration-assessment.md`
- `docs/tooling-ecosystem.md`
- `docs/operator-stack.md`
- `docs/obsidian-pkm-playbook.md`
- `docs/multi-agent-control-plane.md`
- `docs/self-hosted-companions.md`
- `prompts/plan_operator_stack.md`
- `prompts/capture_operator_stack.md`
- `skills/agent-operator-stack/`
- `skills/obsidian-agent-memory-ops/`
- `templates/tooling-stack/`
- `project_memory/tooling-stack.md`

เหมาะกับ:
- ทีมที่ใช้หลาย assistant พร้อมกัน
- งานที่ต้อง handoff ระหว่าง session บ่อย
- งานที่มี personal PKM คู่กับ project memory
