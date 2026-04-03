---
title: "System Design Notes TH - Home"
aliases:
  - "System Design Home"
tags:
  - system-design
  - obsidian
  - toolkit
status: evergreen
type: index
---

# System Design Notes TH

> [!summary]
> ชุดโน้ตภาษาไทยสำหรับ Obsidian ที่สรุป 16 หัวข้อคลาสสิกของ System Design Interview
> ออกแบบให้วางลง `codex-claude-mobile-toolkit` ได้ทันที และใช้เป็นทั้ง **knowledge base**, **study map**, และ **prompt companion** สำหรับ agent workflows

## วิธีใช้ใน repo
- เก็บชุดนี้ไว้ใน `obsidian/system-design-notes-th/`
- ใช้ไฟล์นี้เป็นหน้าเริ่มต้น
- ให้ agent เปิดไฟล์บทที่เกี่ยวข้องก่อนวางแผน architecture
- ลิงก์เข้ากับ `prompts/` หรือ `skills/` เพื่อบังคับให้การตอบมีโครงสร้าง

## ลำดับแนะนำในการอ่าน
1. [[chapters/01-scale-from-zero-to-millions-of-users]]
2. [[chapters/02-back-of-the-envelope-estimation]]
3. [[chapters/03-system-design-interview-framework]]

จากนั้นค่อยอ่านตามโจทย์เฉพาะ:
- Infrastructure core: [[chapters/04-rate-limiter]], [[chapters/05-consistent-hashing]], [[chapters/06-key-value-store]], [[chapters/07-unique-id-generator]]
- Product systems: [[chapters/08-url-shortener]], [[chapters/09-web-crawler]], [[chapters/10-notification-system]], [[chapters/11-news-feed-system]], [[chapters/12-chat-system]]
- Search / media / sync / geo: [[chapters/13-search-autocomplete]], [[chapters/14-youtube]], [[chapters/15-google-drive]], [[chapters/16-proximity-service]]

## Chapter Map
- [[chapters/01-scale-from-zero-to-millions-of-users|01 - Scale From Zero To Millions Of Users]]
- [[chapters/02-back-of-the-envelope-estimation|02 - Back-of-the-envelope Estimation]]
- [[chapters/03-system-design-interview-framework|03 - A Framework For System Design Interviews]]
- [[chapters/04-rate-limiter|04 - Design A Rate Limiter]]
- [[chapters/05-consistent-hashing|05 - Design Consistent Hashing]]
- [[chapters/06-key-value-store|06 - Design A Key-Value Store]]
- [[chapters/07-unique-id-generator|07 - Design A Unique ID Generator In Distributed Systems]]
- [[chapters/08-url-shortener|08 - Design A URL Shortener]]
- [[chapters/09-web-crawler|09 - Design A Web Crawler]]
- [[chapters/10-notification-system|10 - Design A Notification System]]
- [[chapters/11-news-feed-system|11 - Design A News Feed System]]
- [[chapters/12-chat-system|12 - Design A Chat System]]
- [[chapters/13-search-autocomplete|13 - Design A Search Autocomplete System]]
- [[chapters/14-youtube|14 - Design YouTube]]
- [[chapters/15-google-drive|15 - Design Google Drive]]
- [[chapters/16-proximity-service|16 - Proximity Service]]
- [[99-system-design-glossary|99 - Glossary]]

## Recommended agent workflow
1. เปิด [[chapters/03-system-design-interview-framework]]
2. เปิดบทเฉพาะที่เกี่ยวข้อง
3. เปิด `prompts/system_design_review_th.md`
4. ให้ agent สรุป:
   - requirements
   - assumptions
   - capacity estimate
   - architecture
   - trade-offs
   - migration path

## Tags
- #system-design
- #distributed-systems
- #toolkit
- #obsidian
- #flutter-architecture
