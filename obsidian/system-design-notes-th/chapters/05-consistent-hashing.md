---
title: "05. การออกแบบ Consistent Hashing"
aliases:
  - "Design Consistent Hashing"
  - "การออกแบบ Consistent Hashing"
tags:
  - system-design
  - interview
  - distributed-systems
  - toolkit
  - obsidian
status: evergreen
type: note
chapter: 5
---

# 05. การออกแบบ Consistent Hashing

> [!summary]
> บทนี้อธิบาย **Design Consistent Hashing** ในมุมของการออกแบบระบบ โดยเน้นว่า **ใช้กระจาย key/data ระหว่าง node โดยลดการย้ายข้อมูลจำนวนมากเวลาเพิ่มหรือลด node**

## แก่นของบทนี้
- hash ring
- virtual nodes
- partition balance
- replication preference list
- failure-aware routing

## ใช้เมื่อไร
- เมื่อโจทย์เกี่ยวกับการ scale ระบบหรือจัดการโหลดในระดับมาก
- เมื่อต้องอธิบาย trade-off ให้ชัดในเชิงสถาปัตยกรรม
- เมื่อต้องเตรียมตอบโจทย์สัมภาษณ์หรือเขียน design note ให้ทีม

## องค์ประกอบสำคัญ
- Hash ring
- VNode map
- Node membership
- Partition ownership
- Replication strategy

## วิธีคิดแบบ interview-friendly
1. ระบุเป้าหมายของระบบก่อน
2. ประมาณ scale แบบคร่าว ๆ
3. วาด high-level components
4. ระบุจุดเสี่ยงหรือ bottleneck
5. อธิบาย trade-off ที่เลือก
6. สรุปสิ่งที่จะทำต่อถ้าระบบโตขึ้นอีก

## Trade-offs ที่ต้องพูดให้ได้
- ring เข้าใจง่ายแต่ debugging ยากขึ้น
- virtual nodes balance ดีแต่ metadata มากขึ้น
- rebalance น้อยแต่ยังต้องมี data migration

## ข้อผิดพลาดที่พบบ่อย
- จำนวน vnode ไม่เหมาะ
- node capacity ไม่เท่ากัน
- forget rebalance plan
- ไม่ออกแบบ monitoring ตอน node churn

## มุมมองสำหรับ Flutter / Mobile / Toolkit
- เหมาะกับ backend ที่มี cache cluster, object metadata store, distributed session store
- ใช้บทนี้เป็นฐานสำหรับเขียน prompt หรือ design review ใน `codex-claude-mobile-toolkit`
- ถ้าจะใช้กับ agent workflow ให้บังคับ agent สรุป assumption และ bottleneck ทุกครั้ง

## Prompt สั้นสำหรับ agent
```md
ออกแบบระบบหัวข้อ "Design Consistent Hashing" โดยตอบตามลำดับนี้:
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
- [[04-rate-limiter]]
- [[06-key-value-store]]

## Checklist ทบทวนตัวเอง
- [ ] อธิบายโจทย์นี้ได้ใน 2-3 นาที
- [ ] รู้ component หลักของระบบ
- [ ] รู้ trade-off อย่างน้อย 2 แบบ
- [ ] รู้ bottleneck ที่น่าจะเจอ
- [ ] รู้ว่าถ้า scale โตขึ้นจะ evolve อย่างไร
