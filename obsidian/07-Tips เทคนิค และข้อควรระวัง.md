# Tips เทคนิค และข้อควรระวัง

หน้านี้รวมเทคนิคที่ช่วยให้ใช้ toolkit นี้ได้ลื่นขึ้นและพังน้อยลง

## เทคนิค 1: เริ่มจาก routing map เสมอ

ถ้าไม่แน่ใจว่าจะใช้ prompt หรือ skill ไหน:

- เปิด `docs/skill-workflow-map.md` ก่อน

อย่าเดาสุ่มจากชื่อไฟล์

## เทคนิค 2: ใช้ prompt ก่อน skill ในงานที่ใหญ่

กฎง่าย ๆ:

- งานใหญ่ -> prompt ก่อน
- งานแคบ -> skill ก่อน

ถ้าสลับกันผิด จะได้ output ที่ขาด verification หรือขาด sequencing

## เทคนิค 3: อย่ารีบข้าม `plan_feature`

หลายงานพังเพราะข้าม planning

ใช้ `prompts/plan_feature.md` เมื่อ:

- งานแตะหลายไฟล์
- งานมี architecture impact
- งานมีความเสี่ยงด้าน regression

## เทคนิค 4: verification ต้อง explicit

อย่าพูดว่า "น่าจะโอเค"

ให้ใช้:

- `prompts/verification_pass.md`
- `prompts/finalize_mobile_change.md`

แล้วระบุให้ชัด:

- รันอะไรแล้ว
- รันอะไรไม่ได้
- ยังเสี่ยงตรงไหน

## เทคนิค 5: ใช้ project memory จริง ไม่ใช่เก็บไว้เฉย ๆ

ถ้ามีการตัดสินใจที่น่าจะส่งผลในงานรอบหน้า ให้เขียนลง:

- `project_memory/architecture_decisions.md`
- `project_memory/domain_glossary.md`
- `project_memory/ui_rules.md`
- `project_memory/known_issues.md`
- `project_memory/agent_handoff.md`

## เทคนิค 6: เลือก skill แค่เท่าที่จำเป็น

ปัญหาที่เจอบ่อย:

- เปิดหลาย skill ซ้อนกันเกินไป
- คำแนะนำเริ่ม overlap
- output ฟุ้งและไม่ decisive

ให้เลือก:

- skill หลัก 1 ตัว
- skill รอง 1 ตัว

## เทคนิค 7: ใช้ lane เฉพาะทางเมื่อโจทย์ตรงจริง

ตัวอย่าง:

- GraphQL -> `flutter-graphql-*`
- realtime -> `flutter-realtime-feature-pattern`
- TV -> `flutter-tv-ui-pattern`
- Apple-native -> `flutter-apple-native-loop`

อย่าใช้ lane เฉพาะทางเพียงเพราะ "ดู advanced"

## เทคนิค 8: Toolkit นี้เป็น layer ไม่ใช่ app template

อย่าใช้ repo นี้แบบยกทั้งก้อนโดยไม่คิด

ทางเลือกที่ดี:

- copy เฉพาะไฟล์ที่จำเป็น
- ใช้เป็น submodule
- ใช้เป็น conventions repo

ดู:

- `docs/adoption-playbook.md`
- `docs/submodule-installation.md`

## เทคนิค 9: ถ้างานเริ่มจาก design ให้แปลงเป็น implementation context ก่อน

ใช้:

- `docs/stitch-handoff-playbook.md`
- `prompts/stitch_handoff.md`

อย่าเอา design ไปเขียนเป็น code ทันทีโดยไม่มี state coverage

## เทคนิค 10: ใช้ Obsidian กับ repo นี้ให้คุ้ม

คุณสามารถใช้ `obsidian/` เป็น knowledge hub ได้ดีมากสำหรับ:

- onboarding
- decision logs
- architecture notes
- process guides
- internal playbooks

และใช้ `skills/obsidian-doc-writer/` เป็น skill สำหรับสร้างเอกสารแนวนี้ในอนาคต

กติกาเพิ่มเติม:

- ถ้ามีการเพิ่ม prompt, skill, workflow, docs, template, schema หรือ lane ใหม่ใน repo
- หรือมีการเปลี่ยนวิธีใช้งานที่กระทบผู้ใช้ toolkit

ให้ update คู่มือใน `obsidian/` พร้อมกันทุกครั้ง

## ข้อผิดพลาดที่เจอบ่อย

- อ่านแต่ `README.md` แล้วไม่อ่าน `AGENTS.md`
- เลือก skill ผิด abstraction
- ข้าม verification
- ไม่ update project memory
- ใช้ prompt ซ้ำหน้าที่กัน
- เพิ่ม capability ใหม่โดยไม่ update routing docs

ไปต่อ: [[08-Checklist จากเริ่มงานถึงส่งมอบ]]
