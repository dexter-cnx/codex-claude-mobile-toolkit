---
title: "11. การออกแบบ News Feed System"
aliases:
  - "Design A News Feed System"
  - "การออกแบบ News Feed System"
tags:
  - system-design
  - interview
  - distributed-systems
  - toolkit
  - obsidian
status: evergreen
type: note
chapter: 11
---

# 11. การออกแบบ News Feed System

> [!summary]
> บทนี้อธิบาย **Design A News Feed System** ในมุมของการออกแบบระบบ โดยเน้นว่า **feed system เป็นโจทย์ read-heavy ที่มี personalization, ranking, fan-out และ cache หนัก**

## แก่นของบทนี้
- fan-out on write
- fan-out on read
- hybrid model
- ranking service
- pagination/cursor
- celebrity handling

## ใช้เมื่อไร
- เมื่อโจทย์เกี่ยวกับการ scale ระบบหรือจัดการโหลดในระดับมาก
- เมื่อต้องอธิบาย trade-off ให้ชัดในเชิงสถาปัตยกรรม
- เมื่อต้องเตรียมตอบโจทย์สัมภาษณ์หรือเขียน design note ให้ทีม

## องค์ประกอบสำคัญ
- Post service
- Follow graph
- Feed generator
- Timeline store
- Ranking
- Cache
- Media storage

## วิธีคิดแบบ interview-friendly
1. ระบุเป้าหมายของระบบก่อน
2. ประมาณ scale แบบคร่าว ๆ
3. วาด high-level components
4. ระบุจุดเสี่ยงหรือ bottleneck
5. อธิบาย trade-off ที่เลือก
6. สรุปสิ่งที่จะทำต่อถ้าระบบโตขึ้นอีก

## Trade-offs ที่ต้องพูดให้ได้
- fan-out on write อ่านเร็วแต่เขียนแพง
- fan-out on read ยืดหยุ่นแต่ query หนัก
- hybrid ช่วยบาลานซ์แต่ซับซ้อน

## ข้อผิดพลาดที่พบบ่อย
- celebrity hot keys
- deep pagination cost
- stale ranking
- cache invalidation
- duplicate items

## มุมมองสำหรับ Flutter / Mobile / Toolkit
- เหมาะกับ social feed, activity feed, product update feed, news feed ในแอป
- ใช้บทนี้เป็นฐานสำหรับเขียน prompt หรือ design review ใน `codex-claude-mobile-toolkit`
- ถ้าจะใช้กับ agent workflow ให้บังคับ agent สรุป assumption และ bottleneck ทุกครั้ง

## Prompt สั้นสำหรับ agent
```md
ออกแบบระบบหัวข้อ "Design A News Feed System" โดยตอบตามลำดับนี้:
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
- [[10-notification-system]]
- [[12-chat-system]]

## Checklist ทบทวนตัวเอง
- [ ] อธิบายโจทย์นี้ได้ใน 2-3 นาที
- [ ] รู้ component หลักของระบบ
- [ ] รู้ trade-off อย่างน้อย 2 แบบ
- [ ] รู้ bottleneck ที่น่าจะเจอ
- [ ] รู้ว่าถ้า scale โตขึ้นจะ evolve อย่างไร
