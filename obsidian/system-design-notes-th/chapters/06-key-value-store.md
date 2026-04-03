---
title: "06. การออกแบบ Key-Value Store"
aliases:
  - "Design A Key-Value Store"
  - "การออกแบบ Key-Value Store"
tags:
  - system-design
  - interview
  - distributed-systems
  - toolkit
  - obsidian
status: evergreen
type: note
chapter: 6
---

# 06. การออกแบบ Key-Value Store

> [!summary]
> บทนี้อธิบาย **Design A Key-Value Store** ในมุมของการออกแบบระบบ โดยเน้นว่า **เป็นพื้นฐานของระบบกระจายจำนวนมาก เช่น caching layer, metadata store, config store, event state store**

## แก่นของบทนี้
- partitioning
- replication
- quorum
- LSM tree vs B-tree mindset
- consistency models
- compaction/repair

## ใช้เมื่อไร
- เมื่อโจทย์เกี่ยวกับการ scale ระบบหรือจัดการโหลดในระดับมาก
- เมื่อต้องอธิบาย trade-off ให้ชัดในเชิงสถาปัตยกรรม
- เมื่อต้องเตรียมตอบโจทย์สัมภาษณ์หรือเขียน design note ให้ทีม

## องค์ประกอบสำคัญ
- Coordinator
- Storage nodes
- Commit log
- Memtable/SSTable
- Replication manager
- Repair process

## วิธีคิดแบบ interview-friendly
1. ระบุเป้าหมายของระบบก่อน
2. ประมาณ scale แบบคร่าว ๆ
3. วาด high-level components
4. ระบุจุดเสี่ยงหรือ bottleneck
5. อธิบาย trade-off ที่เลือก
6. สรุปสิ่งที่จะทำต่อถ้าระบบโตขึ้นอีก

## Trade-offs ที่ต้องพูดให้ได้
- strong consistency latency สูงกว่า
- eventual consistency เร็วกว่าแต่ stale ได้
- LSM write ดีแต่ read amplification อาจสูง

## ข้อผิดพลาดที่พบบ่อย
- hot partition
- read repair cost
- tombstone buildup
- compaction ไม่ทัน
- cross-region latency

## มุมมองสำหรับ Flutter / Mobile / Toolkit
- ใช้เป็นฐานคิดเวลาเลือกใช้ Redis, Dynamo-style store, หรือ Firestore/Supabase patterns
- ใช้บทนี้เป็นฐานสำหรับเขียน prompt หรือ design review ใน `codex-claude-mobile-toolkit`
- ถ้าจะใช้กับ agent workflow ให้บังคับ agent สรุป assumption และ bottleneck ทุกครั้ง

## Prompt สั้นสำหรับ agent
```md
ออกแบบระบบหัวข้อ "Design A Key-Value Store" โดยตอบตามลำดับนี้:
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
- [[05-consistent-hashing]]
- [[07-unique-id-generator]]

## Checklist ทบทวนตัวเอง
- [ ] อธิบายโจทย์นี้ได้ใน 2-3 นาที
- [ ] รู้ component หลักของระบบ
- [ ] รู้ trade-off อย่างน้อย 2 แบบ
- [ ] รู้ bottleneck ที่น่าจะเจอ
- [ ] รู้ว่าถ้า scale โตขึ้นจะ evolve อย่างไร
