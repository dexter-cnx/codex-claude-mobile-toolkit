---
title: "16. การออกแบบ Proximity Service"
aliases:
  - "Proximity Service"
  - "การออกแบบ Proximity Service"
tags:
  - system-design
  - interview
  - distributed-systems
  - toolkit
  - obsidian
status: evergreen
type: note
chapter: 16
---

# 16. การออกแบบ Proximity Service

> [!summary]
> บทนี้อธิบาย **Proximity Service** ในมุมของการออกแบบระบบ โดยเน้นว่า **บริการ nearby/location search ต้องจัดการ spatial index, update frequency และ noisy location data**

## แก่นของบทนี้
- geohash
- quad tree
- bounding box prefilter
- distance ranking
- location update throttling

## ใช้เมื่อไร
- เมื่อโจทย์เกี่ยวกับการ scale ระบบหรือจัดการโหลดในระดับมาก
- เมื่อต้องอธิบาย trade-off ให้ชัดในเชิงสถาปัตยกรรม
- เมื่อต้องเตรียมตอบโจทย์สัมภาษณ์หรือเขียน design note ให้ทีม

## องค์ประกอบสำคัญ
- Location ingestion
- Spatial index
- Nearby query service
- Ranking
- Cache
- Geo DB

## วิธีคิดแบบ interview-friendly
1. ระบุเป้าหมายของระบบก่อน
2. ประมาณ scale แบบคร่าว ๆ
3. วาด high-level components
4. ระบุจุดเสี่ยงหรือ bottleneck
5. อธิบาย trade-off ที่เลือก
6. สรุปสิ่งที่จะทำต่อถ้าระบบโตขึ้นอีก

## Trade-offs ที่ต้องพูดให้ได้
- index ละเอียดมาก query ดีแต่ update แพง
- ตำแหน่ง real-time แม่นขึ้นแต่ battery/cost สูง
- approximate first then exact distance มักคุ้มกว่า

## ข้อผิดพลาดที่พบบ่อย
- edge cell effects
- GPS noise
- stale location
- hot urban areas
- distance calculation cost

## มุมมองสำหรับ Flutter / Mobile / Toolkit
- เหมาะกับร้านใกล้ฉัน, rider tracking, map search, geofenced notification
- ใช้บทนี้เป็นฐานสำหรับเขียน prompt หรือ design review ใน `codex-claude-mobile-toolkit`
- ถ้าจะใช้กับ agent workflow ให้บังคับ agent สรุป assumption และ bottleneck ทุกครั้ง

## Prompt สั้นสำหรับ agent
```md
ออกแบบระบบหัวข้อ "Proximity Service" โดยตอบตามลำดับนี้:
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
- [[15-google-drive]]

## Checklist ทบทวนตัวเอง
- [ ] อธิบายโจทย์นี้ได้ใน 2-3 นาที
- [ ] รู้ component หลักของระบบ
- [ ] รู้ trade-off อย่างน้อย 2 แบบ
- [ ] รู้ bottleneck ที่น่าจะเจอ
- [ ] รู้ว่าถ้า scale โตขึ้นจะ evolve อย่างไร
