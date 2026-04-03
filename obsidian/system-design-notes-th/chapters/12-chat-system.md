---
title: "12. การออกแบบ Chat System"
aliases:
  - "Design A Chat System"
  - "การออกแบบ Chat System"
tags:
  - system-design
  - interview
  - distributed-systems
  - toolkit
  - obsidian
status: evergreen
type: note
chapter: 12
---

# 12. การออกแบบ Chat System

> [!summary]
> บทนี้อธิบาย **Design A Chat System** ในมุมของการออกแบบระบบ โดยเน้นว่า **chat คือ realtime stateful system ที่รวม persistent connection, sync, ordering และ multi-device consistency**

## แก่นของบทนี้
- WebSocket/long polling
- message sequencing
- presence
- read receipts
- group membership
- offline sync

## ใช้เมื่อไร
- เมื่อโจทย์เกี่ยวกับการ scale ระบบหรือจัดการโหลดในระดับมาก
- เมื่อต้องอธิบาย trade-off ให้ชัดในเชิงสถาปัตยกรรม
- เมื่อต้องเตรียมตอบโจทย์สัมภาษณ์หรือเขียน design note ให้ทีม

## องค์ประกอบสำคัญ
- Connection servers
- Chat service
- Message store
- Presence service
- Push notification path
- Media store

## วิธีคิดแบบ interview-friendly
1. ระบุเป้าหมายของระบบก่อน
2. ประมาณ scale แบบคร่าว ๆ
3. วาด high-level components
4. ระบุจุดเสี่ยงหรือ bottleneck
5. อธิบาย trade-off ที่เลือก
6. สรุปสิ่งที่จะทำต่อถ้าระบบโตขึ้นอีก

## Trade-offs ที่ต้องพูดให้ได้
- global ordering แพง
- per-conversation ordering ง่ายกว่า
- persistent connection ดีต่อ realtime แต่กิน resource
- store-and-forward ลดการสูญหายแต่เพิ่ม complexity

## ข้อผิดพลาดที่พบบ่อย
- duplicate delivery
- message reorder
- presence ไม่แม่น
- device sync conflict
- attachment upload race

## มุมมองสำหรับ Flutter / Mobile / Toolkit
- สำคัญกับแอปแชต, support chat, team collaboration, assistant conversation apps
- ใช้บทนี้เป็นฐานสำหรับเขียน prompt หรือ design review ใน `codex-claude-mobile-toolkit`
- ถ้าจะใช้กับ agent workflow ให้บังคับ agent สรุป assumption และ bottleneck ทุกครั้ง

## Prompt สั้นสำหรับ agent
```md
ออกแบบระบบหัวข้อ "Design A Chat System" โดยตอบตามลำดับนี้:
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
- [[11-news-feed-system]]
- [[13-search-autocomplete]]

## Checklist ทบทวนตัวเอง
- [ ] อธิบายโจทย์นี้ได้ใน 2-3 นาที
- [ ] รู้ component หลักของระบบ
- [ ] รู้ trade-off อย่างน้อย 2 แบบ
- [ ] รู้ bottleneck ที่น่าจะเจอ
- [ ] รู้ว่าถ้า scale โตขึ้นจะ evolve อย่างไร
