---
title: "04. การออกแบบ Rate Limiter"
aliases:
  - "Design A Rate Limiter"
  - "การออกแบบ Rate Limiter"
tags:
  - system-design
  - interview
  - distributed-systems
  - toolkit
  - obsidian
status: evergreen
type: note
chapter: 4
---

# 04. การออกแบบ Rate Limiter

> [!summary]
> บทนี้อธิบาย **Design A Rate Limiter** ในมุมของการออกแบบระบบ โดยเน้นว่า **ควบคุม abuse, ป้องกัน overload, และทำ fairness ระหว่างผู้ใช้หรือระบบ upstream/downstream**

## แก่นของบทนี้
- fixed window
- sliding window log/counter
- token bucket
- leaky bucket
- limit ได้หลายมิติ เช่น user, IP, API key, endpoint

## ใช้เมื่อไร
- เมื่อโจทย์เกี่ยวกับการ scale ระบบหรือจัดการโหลดในระดับมาก
- เมื่อต้องอธิบาย trade-off ให้ชัดในเชิงสถาปัตยกรรม
- เมื่อต้องเตรียมตอบโจทย์สัมภาษณ์หรือเขียน design note ให้ทีม

## องค์ประกอบสำคัญ
- API Gateway
- Rate limit policy store
- Counter store เช่น Redis
- Decision engine
- Observability/alerts

## วิธีคิดแบบ interview-friendly
1. ระบุเป้าหมายของระบบก่อน
2. ประมาณ scale แบบคร่าว ๆ
3. วาด high-level components
4. ระบุจุดเสี่ยงหรือ bottleneck
5. อธิบาย trade-off ที่เลือก
6. สรุปสิ่งที่จะทำต่อถ้าระบบโตขึ้นอีก

## Trade-offs ที่ต้องพูดให้ได้
- แม่นยำสูงมักใช้ทรัพยากรมาก
- กระจายหลาย region ยากขึ้น
- global limit กับ local limit ให้พฤติกรรมต่างกัน

## ข้อผิดพลาดที่พบบ่อย
- clock skew
- hot key ที่ Redis
- policy update ไม่สอดคล้องทุก node
- ไม่แยก soft vs hard limit

## มุมมองสำหรับ Flutter / Mobile / Toolkit
- สำคัญกับ auth, OTP, search, OCR, AI inference endpoints ของ mobile app
- ใช้บทนี้เป็นฐานสำหรับเขียน prompt หรือ design review ใน `codex-claude-mobile-toolkit`
- ถ้าจะใช้กับ agent workflow ให้บังคับ agent สรุป assumption และ bottleneck ทุกครั้ง

## Prompt สั้นสำหรับ agent
```md
ออกแบบระบบหัวข้อ "Design A Rate Limiter" โดยตอบตามลำดับนี้:
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
- [[03-system-design-interview-framework]]
- [[05-consistent-hashing]]

## Checklist ทบทวนตัวเอง
- [ ] อธิบายโจทย์นี้ได้ใน 2-3 นาที
- [ ] รู้ component หลักของระบบ
- [ ] รู้ trade-off อย่างน้อย 2 แบบ
- [ ] รู้ bottleneck ที่น่าจะเจอ
- [ ] รู้ว่าถ้า scale โตขึ้นจะ evolve อย่างไร
