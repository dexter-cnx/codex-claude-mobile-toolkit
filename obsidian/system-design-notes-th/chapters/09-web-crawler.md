---
title: "09. การออกแบบ Web Crawler"
aliases:
  - "Design A Web Crawler"
  - "การออกแบบ Web Crawler"
tags:
  - system-design
  - interview
  - distributed-systems
  - toolkit
  - obsidian
status: evergreen
type: note
chapter: 9
---

# 09. การออกแบบ Web Crawler

> [!summary]
> บทนี้อธิบาย **Design A Web Crawler** ในมุมของการออกแบบระบบ โดยเน้นว่า **สอนการทำระบบ ingestion แบบ distributed พร้อม scheduling, politeness และ deduplication**

## แก่นของบทนี้
- URL frontier
- scheduler
- robots.txt compliance
- domain-based throttling
- content parsing
- dedup

## ใช้เมื่อไร
- เมื่อโจทย์เกี่ยวกับการ scale ระบบหรือจัดการโหลดในระดับมาก
- เมื่อต้องอธิบาย trade-off ให้ชัดในเชิงสถาปัตยกรรม
- เมื่อต้องเตรียมตอบโจทย์สัมภาษณ์หรือเขียน design note ให้ทีม

## องค์ประกอบสำคัญ
- Seed URLs
- Frontier queue
- Fetcher
- Parser
- Deduplicator
- Storage
- Indexer

## วิธีคิดแบบ interview-friendly
1. ระบุเป้าหมายของระบบก่อน
2. ประมาณ scale แบบคร่าว ๆ
3. วาด high-level components
4. ระบุจุดเสี่ยงหรือ bottleneck
5. อธิบาย trade-off ที่เลือก
6. สรุปสิ่งที่จะทำต่อถ้าระบบโตขึ้นอีก

## Trade-offs ที่ต้องพูดให้ได้
- crawl เร็วขึ้นเสี่ยงโดน block
- dedup แม่นขึ้นแต่ต้นทุนสูง
- distributed frontier scale ดีแต่ orchestration ยาก

## ข้อผิดพลาดที่พบบ่อย
- crawl loop
- duplicate fetch
- ไม่ respect robots
- retry จนโดน blacklist
- storage โตเร็วกว่าที่คิด

## มุมมองสำหรับ Flutter / Mobile / Toolkit
- ช่วยฝึกคิด pipeline ingestion สำหรับ import content, scraping-friendly backend, content sync jobs
- ใช้บทนี้เป็นฐานสำหรับเขียน prompt หรือ design review ใน `codex-claude-mobile-toolkit`
- ถ้าจะใช้กับ agent workflow ให้บังคับ agent สรุป assumption และ bottleneck ทุกครั้ง

## Prompt สั้นสำหรับ agent
```md
ออกแบบระบบหัวข้อ "Design A Web Crawler" โดยตอบตามลำดับนี้:
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
- [[08-url-shortener]]
- [[10-notification-system]]

## Checklist ทบทวนตัวเอง
- [ ] อธิบายโจทย์นี้ได้ใน 2-3 นาที
- [ ] รู้ component หลักของระบบ
- [ ] รู้ trade-off อย่างน้อย 2 แบบ
- [ ] รู้ bottleneck ที่น่าจะเจอ
- [ ] รู้ว่าถ้า scale โตขึ้นจะ evolve อย่างไร
