---
title: "System Design Glossary"
aliases:
  - "อภิธานศัพท์ System Design"
tags:
  - system-design
  - glossary
status: evergreen
type: glossary
---

# 99. อภิธานศัพท์ System Design

## คำสำคัญ
- **Availability** — ความสามารถของระบบในการให้บริการได้ต่อเนื่อง
- **Consistency** — ความสอดคล้องของข้อมูลเมื่อมีหลาย replica หรือหลาย node
- **Partitioning / Sharding** — การแบ่งข้อมูลออกเป็นส่วน ๆ เพื่อกระจายโหลด
- **Replication** — การทำสำเนาข้อมูลไว้หลายชุดเพื่อความทนทาน
- **Throughput** — ปริมาณงานที่ระบบทำได้ต่อหน่วยเวลา
- **Latency** — เวลาที่ใช้จนกว่าจะตอบกลับ
- **Hot key / Hot partition** — จุดที่มีโหลดกระจุกตัวผิดปกติ
- **Idempotency** — การเรียกซ้ำแล้วให้ผลลัพธ์เชิงผลกระทบเหมือนเดิม
- **Backpressure** — กลไกชะลอ upstream เมื่อ downstream รับไม่ไหว
- **DLQ (Dead Letter Queue)** — คิวเก็บงานที่ประมวลผลไม่สำเร็จตามเงื่อนไข
- **Fan-out on write** — กระจายข้อมูลไปยัง feed/timeline ตอนเขียน
- **Fan-out on read** — สร้าง feed/timeline ตอนอ่าน
- **Quorum** — การกำหนดจำนวน replica ขั้นต่ำสำหรับ read/write
- **Resumable upload** — อัปโหลดต่อจากที่ค้างได้
- **Delta sync** — sync เฉพาะส่วนที่เปลี่ยน
- **Spatial index** — ดัชนีสำหรับข้อมูลตำแหน่ง/ภูมิศาสตร์

## วิธีใช้ glossary นี้
- ใช้ก่อนหรือหลังอ่านแต่ละบท
- ใช้เป็น cheat sheet เวลาอธิบายระบบให้ agent หรือทีม
- ใช้เชื่อมกับ [[00-system-design-home]]
