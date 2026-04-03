---
aliases:
  - Overlay Update Summary
  - สรุป overlay ล่าสุด
tags:
  - toolkit
  - obsidian
  - update-log
  - routing
---

# สรุป overlay และ pack ที่เพิ่มล่าสุด

หน้านี้ใช้สรุปว่า repo นี้เพิ่งรับอะไรใหม่เข้ามาบ้าง เพื่อให้คนเปิด Obsidian แล้วตามของใหม่เจอเร็ว โดยไม่ต้องไล่ diff จาก root repo

## กลุ่มที่เพิ่มเข้ามา

### 1. Repo discipline pack

ใช้เมื่ออยากเพิ่มความเข้มของการตรวจ readiness ก่อนปล่อยงาน

- docs หลักอยู่ที่ `docs/repo_discipline/`
- prompt ใหม่:
  - `prompts/validate_repo_release.md`
  - `prompts/accessibility_pass.md`
  - `prompts/error_handling_pass.md`
  - `prompts/module_scaffold_pass.md`
- skill ใหม่:
  - `skills/repo/release_readiness/`
- template/checklist ใหม่:
  - `templates/checklists/release-readiness.md`
  - `templates/checklists/accessibility-review.md`
  - `templates/checklists/error-handling-review.md`
- script ใหม่:
  - `scripts/validate_toolkit.ps1`
  - `scripts/validate_toolkit.sh`

เหมาะกับ:
- งานก่อน release
- งานที่ต้องเช็ก accessibility/error states ชัด ๆ
- งานที่ต้อง review ว่า module structure ยังดีอยู่ไหม

## 2. Flutter skills pack

ใช้เมื่ออยากมี skill-routing แบบละเอียดขึ้นสำหรับงาน Flutter รายด้าน

- routing หลัก:
  - `core/routing/flutter-skill-routing.md`
- prompts หลัก:
  - `prompts/plan_flutter_feature_with_skill_router.md`
  - `prompts/self_improve_flutter_skill_pack.md`
- docs เพิ่ม:
  - `docs/flutter-skills-pack/adoption-roadmap.md`
  - `docs/flutter-skills-pack/maintenance-guide.md`
- skills เพิ่มหลายตัว เช่น:
  - `skills/flutter-architecting-apps/`
  - `skills/flutter-building-layouts/`
  - `skills/flutter-managing-state-riverpod/`
  - `skills/flutter-implementing-navigation-and-routing/`
  - `skills/flutter-handling-http-and-json/`
  - `skills/flutter-caching-data-offline-first/`
  - `skills/flutter-working-with-databases/`
  - `skills/flutter-building-forms/`
  - `skills/flutter-theming-material3-tokens/`
  - `skills/flutter-localizing-apps-csv-json/`
  - `skills/flutter-testing-apps-baseline/`
  - `skills/flutter-accessibility/`
  - `skills/flutter-handling-concurrency/`
  - `skills/flutter-animating-apps/`
  - `skills/flutter-native-interop/`

เหมาะกับ:
- งานที่อยากเลือก skill หลัก 1 ตัว แล้วมี supporting skills ชัดเจน
- งาน Flutter ที่ต้องระบุขอบเขตทักษะให้แม่นขึ้น

## 3. AI rules pack

ใช้เมื่ออยากแยก “master rules / adapter / profile / task pack” ออกจากไฟล์กติกาหลักของ repo

- จุดเริ่มต้น:
  - `ai_rules/README.md`
- แกนหลัก:
  - `ai_rules/flutter_master_rules.md`
  - `ai_rules/flutter_rules_10k.md`
  - `ai_rules/flutter_rules_4k.md`
  - `ai_rules/flutter_rules_1k.md`
- adapters:
  - `ai_rules/adapters/`
- profiles:
  - `ai_rules/profiles/`
- task packs:
  - `ai_rules/packs/`
- helper prompts/checklists:
  - `ai_rules/prompts/`
  - `ai_rules/checklists/`
- scripts:
  - `scripts/install_ai_rules.ps1`
  - `scripts/install_ai_rules.sh`

เหมาะกับ:
- งานที่ต้องปรับ rules ให้เข้ากับหลาย surface/tool
- repo ที่อยาก reuse policy layer ได้เป็นระบบ

## 4. System design notes TH pack

ใช้เมื่ออยากมีคลังความรู้ system design ภาษาไทยอยู่ใน Obsidian เดียวกับ toolkit

- จุดเริ่มต้น:
  - `obsidian/system-design-notes-th/00-system-design-home.md`
- integration note:
  - `docs/system-design-notes-pack-integration.md`
- prompt:
  - `prompts/system_design_review_th.md`
- skill bridge:
  - `skills/system-design-notes/README.md`

เหมาะกับ:
- งานวาง architecture ก่อน implement
- งานที่ต้องอธิบาย trade-offs, scale, bottleneck
- การเตรียม design review หรือ backend/mobile system discussion

## 5. Overlay ที่เพิ่มก่อนหน้านี้และยังสำคัญ

- AI context pack:
  - `docs/ai-context-management.md`
  - `docs/ai-working-rules.md`
  - `docs/checklists/ai-session-checklist.md`
  - `prompts/context_guard.md`
  - `prompts/focused_debug.md`
  - `prompts/bounded_refactor.md`
  - `prompts/low_context_handoff.md`
- Content-source / Mangayomi lane:
  - `docs/mangayomi-toolkit-integration-notes.md`
  - `docs/patterns/source-adapter-pattern.md`
  - `docs/patterns/filter-schema-pattern.md`
  - `prompts/new_content_source_feature.md`
  - `skills/flutter-content-source-adapter/`
  - `skills/flutter-offline-content-feature/`

## 6. Anthropic skills overlay

ใช้เมื่ออยากเพิ่มชั้นความสามารถด้าน design-direction, web smoke testing, MCP server planning, และการออกแบบ skill ภายใน toolkit

- docs:
  - `docs/research/anthropic-skills-assessment.md`
  - `docs/integrations/anthropic-skills-adoption-plan.md`
  - `docs/ux-ui/mobile-design-direction-lane.md`
- prompts:
  - `prompts/design/mobile_ui_art_direction.md`
  - `prompts/testing/flutter_web_playwright_smoke.md`
- skills:
  - `skills/flutter-art-direction/`
  - `skills/flutter-web-smoke-testing/`
  - `skills/mcp-server-design/`
  - `skills/toolkit-skill-author/`
- templates:
  - `templates/ux/mobile_theme_brief.template.md`
  - `templates/verification/web_smoke_report.template.md`
- attribution:
  - `ATTRIBUTION.md`

เหมาะกับ:
- งานที่โจทย์ UI ยังไม่ชัดและต้องวาง visual direction ก่อน implement
- งานที่อยากมี smoke pass แบบเบาแต่เชื่อถือได้สำหรับ Flutter web
- งานออกแบบ MCP server ก่อนลงมือเขียนจริง
- งานสร้างหรือรีวิว skill ใหม่ใน toolkit นี้เอง

## วิธีเลือกใช้แบบเร็ว

- ถ้าจะปิดงานก่อนปล่อย: เริ่มที่ repo discipline pack
- ถ้าจะวางแผนงาน Flutter ให้เลือก skill ถูก: ใช้ flutter skills pack
- ถ้าจะจัดระเบียบ rules หลาย surface: ใช้ AI rules pack
- ถ้าจะคุย architecture หรือ system design: ใช้ system design notes TH
- ถ้าจะทำงานแบบ context จำกัดและไม่อยากให้ agent หลุด scope: ใช้ AI context pack
- ถ้าจะวาง art direction หรือ smoke test เว็บแบบเร็ว: ใช้ Anthropic skills overlay

## หมายเหตุการดูแล

ถ้ามี overlay หรือ zip pack ใหม่เข้ามาอีก:

- ให้เพิ่มสรุปลงหน้านี้
- ถ้าของใหม่มีผลต่อวิธีใช้งาน ให้แก้ [[03-คู่มือ Prompts]] หรือ [[04-คู่มือ Skills]] หรือ [[01-แผนที่ repo และส่วนประกอบ]] ควบคู่กันด้วย

## 7. Nothing-inspired design overlay

ใช้เมื่ออยากได้ภาษาภาพแบบ monochrome, typography-led, industrial-feeling โดยยังอยู่บนโครง Flutter UX/UI ของ toolkit เดิม

- docs:
  - `docs/ux-ui/nothing-inspired-design-lane.md`
  - `docs/legal/source-attribution-nothing-skill.md`
- prompts:
  - `prompts/generate_nothing_tokens.md`
  - `prompts/implement_nothing_screen.md`
  - `prompts/review_nothing_flutter_ui.md`
- skill:
  - `skills/flutter-nothing-style/`
- template/example/tokens:
  - `templates/nothing-component-spec.md`
  - `examples/flutter_nothing_theme_extensions.dart`
  - `tokens/nothing/nothing_light.tokens.json`
  - `tokens/nothing/nothing_dark.tokens.json`

เหมาะกับ:
- dashboard
- settings
- tools app
- product ที่อยากได้ภาพลักษณ์ technical และ restraint

## 8. Gradient system pack

ใช้เมื่อ gradient ไม่ควรเป็นแค่ของตกแต่ง แต่ต้องมีบทบาทเชิง semantic, token, performance, และ accessibility ที่ review ได้

- docs:
  - `docs/ux-ui/gradient-system-lane.md`
  - `docs/ux-ui/gradient-performance-and-accessibility.md`
- checklist:
  - `core/checklists/gradient-quality-checklist.md`
- prompts:
  - `prompts/improve_gradient_ui.md`
  - `prompts/patterns/gradient_surface_pattern.md`
- skill:
  - `skills/flutter-gradient-system/`
- templates/tokens:
  - `templates/design-handoff-gradient.template.md`
  - `templates/examples/flutter-gradient-token-example.md`
  - `tokens/gradient-tokens.example.json`

เหมาะกับ:
- hero surfaces
- premium cards
- glow/ring/progress treatments
- งานที่ต้องคุม readability และ rendering cost ไปพร้อมกัน

## 9. AI UX pattern pack

ใช้เมื่อ feature มี AI/agent behavior และต้องการ pattern ที่ช่วยเรื่อง explainability, traceability, resumability, command palette, หรือ note-as-workflow

- shared rules:
  - `agents/shared/patterns-ai-ux.md`
- docs:
  - `docs/patterns/README.md`
  - `docs/patterns/epistemic-disclosure.md`
  - `docs/patterns/algorithmic-transparency.md`
  - `docs/patterns/historical-trails.md`
  - `docs/patterns/command-palette.md`
  - `docs/patterns/programmable-notes.md`
  - `docs/patterns/pattern-evaluation-matrix.md`
- prompt:
  - `prompts/design_ai_feature_with_patterns.md`
- skill:
  - `skills/ai-ux-patterns/`
- template:
  - `templates/ai-feature-pattern-review.md`

เหมาะกับ:
- AI summaries และ recommendations
- workflow ที่ resume ต่อได้
- internal tools
- search หรือ command surfaces

## 10. Toolbox and operator-stack pack

ใช้เมื่ออยากแปลง personal tooling หรือ operator workflow ให้กลายเป็น repo-native docs, prompts, skills, และ project memory

- docs:
  - `docs/toolbox-integration-assessment.md`
  - `docs/tooling-ecosystem.md`
  - `docs/operator-stack.md`
  - `docs/obsidian-pkm-playbook.md`
  - `docs/multi-agent-control-plane.md`
  - `docs/self-hosted-companions.md`
- prompts:
  - `prompts/plan_operator_stack.md`
  - `prompts/capture_operator_stack.md`
- skills:
  - `skills/agent-operator-stack/`
  - `skills/obsidian-agent-memory-ops/`
- template/project memory:
  - `templates/tooling-stack/operator-stack-profile.template.md`
  - `templates/tooling-stack/session-topology.template.md`
  - `project_memory/tooling-stack.md`

เหมาะกับ:
- ทีมที่ใช้หลาย agent หรือหลาย tools
- งาน handoff ข้าม session
- งานที่ต้องคุม operator ergonomics และ memory hygiene
