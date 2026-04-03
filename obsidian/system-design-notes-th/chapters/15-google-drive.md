---
title: "15. การออกแบบระบบแบบ Google Drive"
aliases:
  - "Design Google Drive"
  - "การออกแบบระบบแบบ Google Drive"
tags:
  - system-design
  - interview
  - distributed-systems
  - toolkit
  - obsidian
status: evergreen
type: note
chapter: 15
---

# 15. การออกแบบระบบแบบ Google Drive

> [!summary]
> บทนี้อธิบาย **Design Google Drive** ในมุมของการออกแบบระบบ โดยเน้นว่า **Google Drive เป็นโจทย์ file sync ที่รวม chunk upload, versioning, conflict resolution และ cross-device sync**

## แก่นของบทนี้
- chunked upload
- resumable transfer
- delta sync
- metadata change log
- version history
- conflict handling

## ใช้เมื่อไร
- เมื่อโจทย์เกี่ยวกับการ scale ระบบหรือจัดการโหลดในระดับมาก
- เมื่อต้องอธิบาย trade-off ให้ชัดในเชิงสถาปัตยกรรม
- เมื่อต้องเตรียมตอบโจทย์สัมภาษณ์หรือเขียน design note ให้ทีม

## องค์ประกอบสำคัญ
- Sync client
- Upload service
- Chunk storage
- Metadata service
- Change notification
- Conflict resolver

## วิธีคิดแบบ interview-friendly
1. ระบุเป้าหมายของระบบก่อน
2. ประมาณ scale แบบคร่าว ๆ
3. วาด high-level components
4. ระบุจุดเสี่ยงหรือ bottleneck
5. อธิบาย trade-off ที่เลือก
6. สรุปสิ่งที่จะทำต่อถ้าระบบโตขึ้นอีก

## Trade-offs ที่ต้องพูดให้ได้
- strong sync correctness ซับซ้อน
- eventual sync ใช้ง่ายกว่าแต่เห็นข้อมูลช้ากว่า
- full file sync ง่ายแต่เปลือง bandwidth
- delta sync ซับซ้อนแต่คุ้มมาก

## ข้อผิดพลาดที่พบบ่อย
- duplicate upload
- conflicting edits
- clock mismatch
- large file resume bugs
- orphaned chunks

## มุมมองสำหรับ Flutter / Mobile / Toolkit
- ตรงกับ offline-first, document sync, photo backup, note sync use cases มาก
- ใช้บทนี้เป็นฐานสำหรับเขียน prompt หรือ design review ใน `codex-claude-mobile-toolkit`
- ถ้าจะใช้กับ agent workflow ให้บังคับ agent สรุป assumption และ bottleneck ทุกครั้ง

## Prompt สั้นสำหรับ agent
```md
ออกแบบระบบหัวข้อ "Design Google Drive" โดยตอบตามลำดับนี้:
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
- [[14-youtube]]
- [[16-proximity-service]]

## Checklist ทบทวนตัวเอง
- [ ] อธิบายโจทย์นี้ได้ใน 2-3 นาที
- [ ] รู้ component หลักของระบบ
- [ ] รู้ trade-off อย่างน้อย 2 แบบ
- [ ] รู้ bottleneck ที่น่าจะเจอ
- [ ] รู้ว่าถ้า scale โตขึ้นจะ evolve อย่างไร
