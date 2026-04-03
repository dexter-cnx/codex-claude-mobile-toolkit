---
title: "System Design Notes Pack Integration"
tags:
  - toolkit
  - system-design
  - docs
status: evergreen
type: guide
---

# การผนวก System Design Notes TH เข้ากับ codex-claude-mobile-toolkit

## วัตถุประสงค์

ชุดนี้ถูกออกแบบมาเพื่อเพิ่มเลเยอร์ความรู้ด้าน architecture ให้ toolkit เดิม โดยไม่ทำให้ core toolkit บวมเกินจำเป็น

## ตำแหน่งใน toolkit

- `obsidian/system-design-notes-th/` สำหรับอ่านและเชื่อมโยงใน vault
- `prompts/system_design_review_th.md` สำหรับรันกับ agent
- `skills/system-design-notes/README.md` สำหรับอธิบายวิธีใช้ note pack นี้ใน skill layer

## ใช้เมื่อไร

- ตอนเริ่ม feature ที่มี backend หรือ scale concern
- ตอนทำ architecture review
- ตอนเตรียม design discussion
- ตอนให้ agent อธิบาย trade-offs ก่อนลงมือเขียนโค้ด

## Pattern การใช้งานที่แนะนำ

### 1. Study mode

1. เปิด `00-system-design-home.md`
2. เลือก chapter ที่เกี่ยวข้อง
3. อ่าน glossary ถ้ายังไม่คุ้นศัพท์

### 2. Agent planning mode

1. เปิด `prompts/system_design_review_th.md`
2. แนบ requirement ของ feature
3. ระบุ chapter ที่เกี่ยวข้อง 1-3 บท
4. ให้ agent สรุป architecture ก่อน implement

### 3. Design review mode

บังคับให้ agent ตอบ 6 หัวข้อ:

- requirement
- scale
- architecture
- bottleneck
- trade-off
- evolution path

## ข้อดีต่อ toolkit

- เพิ่ม reusable architecture vocabulary
- ลดการออกแบบแบบ ad hoc
- ช่วยให้ prompt กับ agent มีโครงสร้างมากขึ้น
- ใช้ทบทวนความคิดก่อนสร้าง skill ใหม่

## ข้อควรระวัง

- ห้ามถือว่าโน้ตเป็น source of truth เชิง production ทั้งหมด
- ต้องปรับให้ตรงกับ scale และบริบทของโปรเจกต์จริง
- บทที่เหมาะกับ interview อาจต้องลด complexity ลงสำหรับ MVP
