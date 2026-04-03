---
title: "08. การออกแบบ URL Shortener"
aliases:
  - "Design A URL Shortener"
  - "การออกแบบ URL Shortener"
tags:
  - system-design
  - interview
  - distributed-systems
  - toolkit
  - obsidian
status: evergreen
type: note
chapter: 8
---

# 08. การออกแบบ URL Shortener

> [!summary]
> บทนี้อธิบาย **Design A URL Shortener** ในมุมของการออกแบบระบบ โดยเน้นว่า **โจทย์คลาสสิกที่รวม uniqueness, redirect latency, analytics, caching, และ abuse prevention**

## แก่นของบทนี้
- short code generation
- base62 encoding
- collision handling
- redirect cache
- expiration/custom alias

## ใช้เมื่อไร
- เมื่อโจทย์เกี่ยวกับการ scale ระบบหรือจัดการโหลดในระดับมาก
- เมื่อต้องอธิบาย trade-off ให้ชัดในเชิงสถาปัตยกรรม
- เมื่อต้องเตรียมตอบโจทย์สัมภาษณ์หรือเขียน design note ให้ทีม

## องค์ประกอบสำคัญ
- Shorten API
- Redirect service
- Metadata store
- Analytics pipeline
- Cache
- Spam/abuse checks

## วิธีคิดแบบ interview-friendly
1. ระบุเป้าหมายของระบบก่อน
2. ประมาณ scale แบบคร่าว ๆ
3. วาด high-level components
4. ระบุจุดเสี่ยงหรือ bottleneck
5. อธิบาย trade-off ที่เลือก
6. สรุปสิ่งที่จะทำต่อถ้าระบบโตขึ้นอีก

## Trade-offs ที่ต้องพูดให้ได้
- random code ชนยากแต่ยาว
- counter-based อ่านง่ายแต่เดาได้
- analytics แบบ synchronous ช้ากว่า async events

## ข้อผิดพลาดที่พบบ่อย
- hot popular URLs
- open redirect abuse
- malicious links
- cache miss แล้ว DB overload

## มุมมองสำหรับ Flutter / Mobile / Toolkit
- ใช้เป็นแบบฝึกที่ดีสำหรับ Flutter app + backend + analytics pipeline
- ใช้บทนี้เป็นฐานสำหรับเขียน prompt หรือ design review ใน `codex-claude-mobile-toolkit`
- ถ้าจะใช้กับ agent workflow ให้บังคับ agent สรุป assumption และ bottleneck ทุกครั้ง

## Prompt สั้นสำหรับ agent
```md
ออกแบบระบบหัวข้อ "Design A URL Shortener" โดยตอบตามลำดับนี้:
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
- [[07-unique-id-generator]]
- [[09-web-crawler]]

## Checklist ทบทวนตัวเอง
- [ ] อธิบายโจทย์นี้ได้ใน 2-3 นาที
- [ ] รู้ component หลักของระบบ
- [ ] รู้ trade-off อย่างน้อย 2 แบบ
- [ ] รู้ bottleneck ที่น่าจะเจอ
- [ ] รู้ว่าถ้า scale โตขึ้นจะ evolve อย่างไร
