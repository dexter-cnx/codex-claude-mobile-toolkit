---
title: "02. การประเมินขนาดระบบแบบคร่าว ๆ"
aliases:
  - "Back-of-the-envelope Estimation"
  - "การประเมินขนาดระบบแบบคร่าว ๆ"
tags:
  - system-design
  - interview
  - distributed-systems
  - toolkit
  - obsidian
status: evergreen
type: note
chapter: 2
---

# 02. การประเมินขนาดระบบแบบคร่าว ๆ

> [!summary]
> บทนี้อธิบาย **Back-of-the-envelope Estimation** ในมุมของการออกแบบระบบ โดยเน้นว่า **ใช้ประเมิน capacity ก่อนตัดสินใจเลือก architecture เช่น RPS, storage, bandwidth, cache size**

## แก่นของบทนี้
- คิด order of magnitude ไม่ต้องเป๊ะ
- แยก average กับ peak traffic
- แปลง user behavior เป็น requests/events
- คำนวณ storage growth ต่อวัน/ปี
- ดู read-heavy vs write-heavy ให้ชัด

## ใช้เมื่อไร
- เมื่อโจทย์เกี่ยวกับการ scale ระบบหรือจัดการโหลดในระดับมาก
- เมื่อต้องอธิบาย trade-off ให้ชัดในเชิงสถาปัตยกรรม
- เมื่อต้องเตรียมตอบโจทย์สัมภาษณ์หรือเขียน design note ให้ทีม

## องค์ประกอบสำคัญ
- DAU/MAU assumptions
- Peak QPS
- Request size
- Response size
- Retention window
- Replication factor

## วิธีคิดแบบ interview-friendly
1. ระบุเป้าหมายของระบบก่อน
2. ประมาณ scale แบบคร่าว ๆ
3. วาด high-level components
4. ระบุจุดเสี่ยงหรือ bottleneck
5. อธิบาย trade-off ที่เลือก
6. สรุปสิ่งที่จะทำต่อถ้าระบบโตขึ้นอีก

## Trade-offs ที่ต้องพูดให้ได้
- ประมาณหยาบเร็วแต่คลาดเคลื่อนได้
- ละเอียดเกินไปเสียเวลาใน interview
- เผื่อ headroom มากปลอดภัยกว่าแต่สิ้นเปลืองต้นทุน

## ข้อผิดพลาดที่พบบ่อย
- ใช้ค่าเฉลี่ยแทน peak
- ลืม replication/compression/index overhead
- ลืม region/CDN egress
- ลืม background jobs

## มุมมองสำหรับ Flutter / Mobile / Toolkit
- ใช้คุยกับ agent ก่อนทำ feature ใหญ่ เช่น image feed, chat, OCR upload, realtime sync
- ใช้บทนี้เป็นฐานสำหรับเขียน prompt หรือ design review ใน `codex-claude-mobile-toolkit`
- ถ้าจะใช้กับ agent workflow ให้บังคับ agent สรุป assumption และ bottleneck ทุกครั้ง

## Prompt สั้นสำหรับ agent
```md
ออกแบบระบบหัวข้อ "Back-of-the-envelope Estimation" โดยตอบตามลำดับนี้:
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
- [[01-scale-from-zero-to-millions-of-users]]
- [[03-system-design-interview-framework]]

## Checklist ทบทวนตัวเอง
- [ ] อธิบายโจทย์นี้ได้ใน 2-3 นาที
- [ ] รู้ component หลักของระบบ
- [ ] รู้ trade-off อย่างน้อย 2 แบบ
- [ ] รู้ bottleneck ที่น่าจะเจอ
- [ ] รู้ว่าถ้า scale โตขึ้นจะ evolve อย่างไร
