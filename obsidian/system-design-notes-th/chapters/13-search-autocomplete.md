---
title: "13. การออกแบบ Search Autocomplete"
aliases:
  - "Design A Search Autocomplete System"
  - "การออกแบบ Search Autocomplete"
tags:
  - system-design
  - interview
  - distributed-systems
  - toolkit
  - obsidian
status: evergreen
type: note
chapter: 13
---

# 13. การออกแบบ Search Autocomplete

> [!summary]
> บทนี้อธิบาย **Design A Search Autocomplete System** ในมุมของการออกแบบระบบ โดยเน้นว่า **autocomplete ต้องตอบเร็วมากในขณะพิมพ์ พร้อม ranking และ memory-efficient indexing**

## แก่นของบทนี้
- Trie/prefix tree
- top-k per node
- frequency + recency ranking
- batch rebuild + incremental update
- typo tolerance บางส่วน

## ใช้เมื่อไร
- เมื่อโจทย์เกี่ยวกับการ scale ระบบหรือจัดการโหลดในระดับมาก
- เมื่อต้องอธิบาย trade-off ให้ชัดในเชิงสถาปัตยกรรม
- เมื่อต้องเตรียมตอบโจทย์สัมภาษณ์หรือเขียน design note ให้ทีม

## องค์ประกอบสำคัญ
- Query logs
- Aggregator
- Trie/index store
- Serving layer
- Cache
- Ranking features

## วิธีคิดแบบ interview-friendly
1. ระบุเป้าหมายของระบบก่อน
2. ประมาณ scale แบบคร่าว ๆ
3. วาด high-level components
4. ระบุจุดเสี่ยงหรือ bottleneck
5. อธิบาย trade-off ที่เลือก
6. สรุปสิ่งที่จะทำต่อถ้าระบบโตขึ้นอีก

## Trade-offs ที่ต้องพูดให้ได้
- precompute เร็วตอน serve แต่ update แพง
- dynamic ranking สดกว่าแต่ช้ากว่า
- memory เร็วแต่ใช้ RAM สูง

## ข้อผิดพลาดที่พบบ่อย
- large prefix explosion
- poor multilingual handling
- no abuse filtering
- top-k stale
- slow updates

## มุมมองสำหรับ Flutter / Mobile / Toolkit
- เหมาะกับ search box, mention picker, product search, location search ใน Flutter
- ใช้บทนี้เป็นฐานสำหรับเขียน prompt หรือ design review ใน `codex-claude-mobile-toolkit`
- ถ้าจะใช้กับ agent workflow ให้บังคับ agent สรุป assumption และ bottleneck ทุกครั้ง

## Prompt สั้นสำหรับ agent
```md
ออกแบบระบบหัวข้อ "Design A Search Autocomplete System" โดยตอบตามลำดับนี้:
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
- [[12-chat-system]]
- [[14-youtube]]

## Checklist ทบทวนตัวเอง
- [ ] อธิบายโจทย์นี้ได้ใน 2-3 นาที
- [ ] รู้ component หลักของระบบ
- [ ] รู้ trade-off อย่างน้อย 2 แบบ
- [ ] รู้ bottleneck ที่น่าจะเจอ
- [ ] รู้ว่าถ้า scale โตขึ้นจะ evolve อย่างไร
