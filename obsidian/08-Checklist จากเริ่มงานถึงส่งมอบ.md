# Checklist จากเริ่มงานถึงส่งมอบ

หน้านี้คือ checklist ที่ใช้ซ้ำได้จริง

## Checklist เริ่มงาน

- [ ] อ่าน `AGENTS.md`
- [ ] อ่าน `README.md`
- [ ] เปิด `docs/skill-workflow-map.md`
- [ ] เลือก runtime/surface ที่จะใช้
- [ ] เลือก prompt หลัก
- [ ] เลือก skill หลัก

## Checklist ก่อนลงมือ implement

- [ ] งานนี้ต้องใช้ `prompts/plan_feature.md` หรือไม่
- [ ] มี architecture impact หรือไม่
- [ ] มี localization impact หรือไม่
- [ ] มี data/persistence impact หรือไม่
- [ ] มี platform/native impact หรือไม่
- [ ] ต้องใช้ lane เฉพาะทางหรือไม่

## Checklist ระหว่างทำงาน

- [ ] logic ไม่ไหลไปกองใน UI
- [ ] state หลักมี loading/empty/error/success
- [ ] ไม่ hardcode string ถ้ามี localization
- [ ] ใช้ skill ที่แคบพอ ไม่กว้างเกิน
- [ ] ถ้ามี decision ใหม่ เริ่มจดลง project memory

## Checklist ก่อน review

- [ ] รัน baseline verification เท่าที่ environment ทำได้
- [ ] ใช้ `prompts/verification_pass.md`
- [ ] ระบุสิ่งที่ยัง verify ไม่ได้
- [ ] ระบุ residual risks
- [ ] ถ้าจำเป็น ใช้ `prompts/review_mobile_change.md`

## Checklist ก่อน merge หรือ handoff

- [ ] ใช้ `prompts/finalize_mobile_change.md`
- [ ] อัปเดต `project_memory/`
- [ ] สร้าง change summary หรือ PR summary
- [ ] ระบุ follow-up items
- [ ] ระบุ commit scope ชัดเจน

## Checklist สำหรับงาน toolkit เอง

- [ ] update `docs/skill-workflow-map.md` หรือยัง
- [ ] update `docs/feature-registry.md` หรือยัง
- [ ] update `docs/runtime-matrix.md` หรือยัง
- [ ] run `prompts/coherence_pass.md` หรือยัง
- [ ] ถ้ามีบทเรียนใหม่ run `prompts/self_improve_toolkit.md` หรือยัง
- [ ] ถ้ามี prompt, skill, workflow, docs, template, schema หรือ lane ใหม่ update `obsidian/` แล้วหรือยัง
- [ ] ถ้าวิธีใช้งานของ repo เปลี่ยน คู่มือภาษาไทยใน `obsidian/` ถูกปรับตามแล้วหรือยัง

## ลำดับแนะนำแบบสั้นมาก

1. กติกา
2. prompt
3. skill
4. implement
5. verify
6. memory
7. finalize

ย้อนกลับไปหน้าแรก: [[README]]
