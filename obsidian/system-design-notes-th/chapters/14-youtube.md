---
title: "14. การออกแบบระบบแบบ YouTube"
aliases:
  - "Design YouTube"
  - "การออกแบบระบบแบบ YouTube"
tags:
  - system-design
  - interview
  - distributed-systems
  - toolkit
  - obsidian
status: evergreen
type: note
chapter: 14
---

# 14. การออกแบบระบบแบบ YouTube

> [!summary]
> บทนี้อธิบาย **Design YouTube** ในมุมของการออกแบบระบบ โดยเน้นว่า **YouTube เป็นตัวอย่างระบบ media platform ขนาดใหญ่ที่มี upload, transcoding, storage, CDN และ playback**

## แก่นของบทนี้
- separate upload path from serving path
- async transcoding pipeline
- multiple resolutions/codecs
- metadata vs blob separation
- CDN delivery

## ใช้เมื่อไร
- เมื่อโจทย์เกี่ยวกับการ scale ระบบหรือจัดการโหลดในระดับมาก
- เมื่อต้องอธิบาย trade-off ให้ชัดในเชิงสถาปัตยกรรม
- เมื่อต้องเตรียมตอบโจทย์สัมภาษณ์หรือเขียน design note ให้ทีม

## องค์ประกอบสำคัญ
- Upload API
- Object storage
- Transcoding workers
- Metadata DB
- CDN
- Playback manifest service
- Analytics

## วิธีคิดแบบ interview-friendly
1. ระบุเป้าหมายของระบบก่อน
2. ประมาณ scale แบบคร่าว ๆ
3. วาด high-level components
4. ระบุจุดเสี่ยงหรือ bottleneck
5. อธิบาย trade-off ที่เลือก
6. สรุปสิ่งที่จะทำต่อถ้าระบบโตขึ้นอีก

## Trade-offs ที่ต้องพูดให้ได้
- transcode ทุกอย่างคุณภาพดีแต่ cost สูง
- on-demand transcode ประหยัดแต่ latency สูง
- global CDN ดีแต่แพง

## ข้อผิดพลาดที่พบบ่อย
- large file retry pain
- partial upload failure
- metadata/object inconsistency
- cold-start playback
- storage explosion

## มุมมองสำหรับ Flutter / Mobile / Toolkit
- ใช้เป็นฐานคิดสำหรับ video upload/playback feature ใน Flutter + backend
- ใช้บทนี้เป็นฐานสำหรับเขียน prompt หรือ design review ใน `codex-claude-mobile-toolkit`
- ถ้าจะใช้กับ agent workflow ให้บังคับ agent สรุป assumption และ bottleneck ทุกครั้ง

## Prompt สั้นสำหรับ agent
```md
ออกแบบระบบหัวข้อ "Design YouTube" โดยตอบตามลำดับนี้:
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
- [[13-search-autocomplete]]
- [[15-google-drive]]

## Checklist ทบทวนตัวเอง
- [ ] อธิบายโจทย์นี้ได้ใน 2-3 นาที
- [ ] รู้ component หลักของระบบ
- [ ] รู้ trade-off อย่างน้อย 2 แบบ
- [ ] รู้ bottleneck ที่น่าจะเจอ
- [ ] รู้ว่าถ้า scale โตขึ้นจะ evolve อย่างไร
