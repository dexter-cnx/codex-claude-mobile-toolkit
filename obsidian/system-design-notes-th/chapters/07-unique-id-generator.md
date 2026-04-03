---
title: "07. การออกแบบตัวสร้าง ID แบบกระจาย"
aliases:
  - "Design A Unique ID Generator In Distributed Systems"
  - "การออกแบบตัวสร้าง ID แบบกระจาย"
tags:
  - system-design
  - interview
  - distributed-systems
  - toolkit
  - obsidian
status: evergreen
type: note
chapter: 7
---

# 07. การออกแบบตัวสร้าง ID แบบกระจาย

> [!summary]
> บทนี้อธิบาย **Design A Unique ID Generator In Distributed Systems** ในมุมของการออกแบบระบบ โดยเน้นว่า **ระบบกระจายต้องการ ID ที่ไม่ชนกัน, สร้างได้เร็ว, และบางครั้งควร sortable ตามเวลา**

## แก่นของบทนี้
- UUID
- database auto-increment
- ticket server
- Snowflake-style timestamp + worker + sequence

## ใช้เมื่อไร
- เมื่อโจทย์เกี่ยวกับการ scale ระบบหรือจัดการโหลดในระดับมาก
- เมื่อต้องอธิบาย trade-off ให้ชัดในเชิงสถาปัตยกรรม
- เมื่อต้องเตรียมตอบโจทย์สัมภาษณ์หรือเขียน design note ให้ทีม

## องค์ประกอบสำคัญ
- Time source
- Worker/node id
- Sequence counter
- Clock drift handling
- ID service (ถ้ามี)

## วิธีคิดแบบ interview-friendly
1. ระบุเป้าหมายของระบบก่อน
2. ประมาณ scale แบบคร่าว ๆ
3. วาด high-level components
4. ระบุจุดเสี่ยงหรือ bottleneck
5. อธิบาย trade-off ที่เลือก
6. สรุปสิ่งที่จะทำต่อถ้าระบบโตขึ้นอีก

## Trade-offs ที่ต้องพูดให้ได้
- UUID สร้างง่ายแต่ยาวและไม่เรียงเวลา
- central ticket server ง่ายแต่เสี่ยง bottleneck
- Snowflake scale ดีแต่ต้องจัดการ clock drift

## ข้อผิดพลาดที่พบบ่อย
- clock moved backward
- worker id ซ้ำ
- sequence overflow
- exposing internals ผ่าน predictable IDs

## มุมมองสำหรับ Flutter / Mobile / Toolkit
- เหมาะกับ offline-first app ที่ต้องสร้าง local IDs แล้ว sync ภายหลัง
- ใช้บทนี้เป็นฐานสำหรับเขียน prompt หรือ design review ใน `codex-claude-mobile-toolkit`
- ถ้าจะใช้กับ agent workflow ให้บังคับ agent สรุป assumption และ bottleneck ทุกครั้ง

## Prompt สั้นสำหรับ agent
```md
ออกแบบระบบหัวข้อ "Design A Unique ID Generator In Distributed Systems" โดยตอบตามลำดับนี้:
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
- [[06-key-value-store]]
- [[08-url-shortener]]

## Checklist ทบทวนตัวเอง
- [ ] อธิบายโจทย์นี้ได้ใน 2-3 นาที
- [ ] รู้ component หลักของระบบ
- [ ] รู้ trade-off อย่างน้อย 2 แบบ
- [ ] รู้ bottleneck ที่น่าจะเจอ
- [ ] รู้ว่าถ้า scale โตขึ้นจะ evolve อย่างไร
