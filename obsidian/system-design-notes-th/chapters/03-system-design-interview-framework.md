---
title: "03. กรอบคิดสำหรับตอบโจทย์ System Design"
aliases:
  - "A Framework For System Design Interviews"
  - "กรอบคิดสำหรับตอบโจทย์ System Design"
tags:
  - system-design
  - interview
  - distributed-systems
  - toolkit
  - obsidian
status: evergreen
type: note
chapter: 3
---

# 03. กรอบคิดสำหรับตอบโจทย์ System Design

> [!summary]
> บทนี้อธิบาย **A Framework For System Design Interviews** ในมุมของการออกแบบระบบ โดยเน้นว่า **เป็น flow มาตรฐานสำหรับตอบโจทย์ system design อย่างมีลำดับ ไม่กระโดดข้าม requirement**

## แก่นของบทนี้
- clarify functional/non-functional requirements
- ประมาณ scale ก่อน
- วาด high-level design
- เลือก deep dive ตามจุดเสี่ยง
- สรุป bottlenecks และ next steps

## ใช้เมื่อไร
- เมื่อโจทย์เกี่ยวกับการ scale ระบบหรือจัดการโหลดในระดับมาก
- เมื่อต้องอธิบาย trade-off ให้ชัดในเชิงสถาปัตยกรรม
- เมื่อต้องเตรียมตอบโจทย์สัมภาษณ์หรือเขียน design note ให้ทีม

## องค์ประกอบสำคัญ
- Requirements
- Scale estimate
- High-level architecture
- Data model
- APIs
- Bottlenecks
- Trade-offs

## วิธีคิดแบบ interview-friendly
1. ระบุเป้าหมายของระบบก่อน
2. ประมาณ scale แบบคร่าว ๆ
3. วาด high-level components
4. ระบุจุดเสี่ยงหรือ bottleneck
5. อธิบาย trade-off ที่เลือก
6. สรุปสิ่งที่จะทำต่อถ้าระบบโตขึ้นอีก

## Trade-offs ที่ต้องพูดให้ได้
- ตอบเร็วอาจตก requirement สำคัญ
- deep dive มากไปอาจไม่ครบภาพรวม
- พูดแต่ component โดยไม่พูดเหตุผลทำให้คำตอบดูอ่อน

## ข้อผิดพลาดที่พบบ่อย
- ไม่ถาม requirement ชัดเจน
- ไม่ระบุ assumption
- ไม่พูด latency/availability/security
- ไม่สรุปข้อจำกัดของคำตอบ

## มุมมองสำหรับ Flutter / Mobile / Toolkit
- เหมาะกับใช้เป็น prompt template ให้ Codex/Claude วางแผนก่อนลงมือ implement
- ใช้บทนี้เป็นฐานสำหรับเขียน prompt หรือ design review ใน `codex-claude-mobile-toolkit`
- ถ้าจะใช้กับ agent workflow ให้บังคับ agent สรุป assumption และ bottleneck ทุกครั้ง

## Prompt สั้นสำหรับ agent
```md
ออกแบบระบบหัวข้อ "A Framework For System Design Interviews" โดยตอบตามลำดับนี้:
1. Functional requirements
2. Non-functional requirements
3. Capacity estimation
4. High-level architecture
5. Data model / storage choices
6. APIs หรือ event flow
7. Bottlenecks
8. Trade-offs
9. Evolution path เมื่อระบบโตขึ้น
```

## โน้ตเชื่อมโยง
- [[00-system-design-home]]
- [[99-system-design-glossary]]
- [[02-back-of-the-envelope-estimation]]
- [[04-rate-limiter]]

## Checklist ทบทวนตัวเอง
- [ ] อธิบายโจทย์นี้ได้ใน 2-3 นาที
- [ ] รู้ component หลักของระบบ
- [ ] รู้ trade-off อย่างน้อย 2 แบบ
- [ ] รู้ bottleneck ที่น่าจะเจอ
- [ ] รู้ว่าถ้า scale โตขึ้นจะ evolve อย่างไร
