---
title: "01. การขยายระบบจากศูนย์สู่ผู้ใช้ระดับล้าน"
aliases:
  - "Scale From Zero To Millions Of Users"
  - "การขยายระบบจากศูนย์สู่ผู้ใช้ระดับล้าน"
tags:
  - system-design
  - interview
  - distributed-systems
  - toolkit
  - obsidian
status: evergreen
type: note
chapter: 1
---

# 01. การขยายระบบจากศูนย์สู่ผู้ใช้ระดับล้าน

> [!summary]
> บทนี้อธิบาย **Scale From Zero To Millions Of Users** ในมุมของการออกแบบระบบ โดยเน้นว่า **ใช้เป็นบทเปิดเพื่อเข้าใจ evolution ของระบบ ตั้งแต่ monolith เล็ก ๆ ไปจนถึงระบบที่มี load balancer, cache, CDN, database replication และ sharding**

## แก่นของบทนี้
- เริ่มจากสถาปัตยกรรมเรียบง่ายก่อน
- ขยายแบบแยก concern ทีละชั้น
- ทำ service ให้ stateless เท่าที่ทำได้
- ใช้ cache/CDN เพื่อลดภาระ origin
- แยกฐานข้อมูลเมื่อ read/write โตขึ้น

## ใช้เมื่อไร
- เมื่อโจทย์เกี่ยวกับการ scale ระบบหรือจัดการโหลดในระดับมาก
- เมื่อต้องอธิบาย trade-off ให้ชัดในเชิงสถาปัตยกรรม
- เมื่อต้องเตรียมตอบโจทย์สัมภาษณ์หรือเขียน design note ให้ทีม

## องค์ประกอบสำคัญ
- Client
- DNS
- Load Balancer
- App Servers
- Cache
- CDN
- Primary/Replica DB
- Object Storage
- Message Queue

## วิธีคิดแบบ interview-friendly
1. ระบุเป้าหมายของระบบก่อน
2. ประมาณ scale แบบคร่าว ๆ
3. วาด high-level components
4. ระบุจุดเสี่ยงหรือ bottleneck
5. อธิบาย trade-off ที่เลือก
6. สรุปสิ่งที่จะทำต่อถ้าระบบโตขึ้นอีก

## Trade-offs ที่ต้องพูดให้ได้
- ระบบง่ายพัฒนาเร็วแต่ scale ยาก
- replica ช่วย read แต่เพิ่มความซับซ้อนด้าน consistency
- cache เร็วขึ้นแต่ต้องจัดการ invalidation
- stateless deploy ง่ายแต่ต้องย้าย session/state ออกไป

## ข้อผิดพลาดที่พบบ่อย
- ออกแบบใหญ่เกินความจำเป็นตั้งแต่แรก
- ผูก session ไว้กับเครื่องเดียว
- ไม่แยก static assets ออกจาก app path
- ประเมิน traffic ต่ำเกินจริง

## มุมมองสำหรับ Flutter / Mobile / Toolkit
- เหมาะกับการคิด backend ของ Flutter app ที่เริ่มเล็กแล้วโต เช่น auth, catalog, media, push event
- ใช้บทนี้เป็นฐานสำหรับเขียน prompt หรือ design review ใน `codex-claude-mobile-toolkit`
- ถ้าจะใช้กับ agent workflow ให้บังคับ agent สรุป assumption และ bottleneck ทุกครั้ง

## Prompt สั้นสำหรับ agent
```md
ออกแบบระบบหัวข้อ "Scale From Zero To Millions Of Users" โดยตอบตามลำดับนี้:
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

## Checklist ทบทวนตัวเอง
- [ ] อธิบายโจทย์นี้ได้ใน 2-3 นาที
- [ ] รู้ component หลักของระบบ
- [ ] รู้ trade-off อย่างน้อย 2 แบบ
- [ ] รู้ bottleneck ที่น่าจะเจอ
- [ ] รู้ว่าถ้า scale โตขึ้นจะ evolve อย่างไร
