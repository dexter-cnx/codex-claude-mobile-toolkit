---
aliases:
  - Codex Claude Mobile Toolkit คู่มือไทย
tags:
  - toolkit
  - flutter
  - codex
  - obsidian
---

# คู่มือภาษาไทย: codex-claude-mobile-toolkit

โน้ตชุดนี้ทำมาให้อ่านใน Obsidian โดยเน้นการใช้งานจริง ตั้งแต่เริ่มต้นจนถึงระดับขั้นสูง

## เส้นทางแนะนำ

1. [[00-เส้นทางเริ่มต้น]]
2. [[01-แผนที่ repo และส่วนประกอบ]]
3. [[02-โฟลว์ทำงานมาตรฐาน]]
4. [[03-คู่มือ Prompts]]
5. [[04-คู่มือ Skills]]
6. [[05-สูตรใช้งานตามสถานการณ์]]
7. [[06-Agents, Antigravity, MCP และ Surfaces]]
8. [[07-Tips เทคนิค และข้อควรระวัง]]
9. [[08-Checklist จากเริ่มงานถึงส่งมอบ]]

## อ่านเมื่อไรดี

- เพิ่งรู้จัก toolkit นี้: เริ่มที่ [[00-เส้นทางเริ่มต้น]]
- อยากรู้ว่าแต่ละโฟลเดอร์ใช้ทำอะไร: ไปที่ [[01-แผนที่ repo และส่วนประกอบ]]
- อยากทำงานจริงแบบมีลำดับ: ไปที่ [[02-โฟลว์ทำงานมาตรฐาน]]
- อยากรู้ว่า prompt ไหนใช้เมื่อไร: ไปที่ [[03-คู่มือ Prompts]]
- อยากรู้ว่าควรเลือก skill ยังไง: ไปที่ [[04-คู่มือ Skills]]
- อยากได้สูตรสำเร็จตามงานจริง: ไปที่ [[05-สูตรใช้งานตามสถานการณ์]]
- อยากใช้งาน Antigravity / OpenClaw / MCP: ไปที่ [[06-Agents, Antigravity, MCP และ Surfaces]]
- อยากได้เคล็ดลับลดงานพัง: ไปที่ [[07-Tips เทคนิค และข้อควรระวัง]]

## แนวคิดหลักของ toolkit นี้

Toolkit นี้ไม่ใช่ starter app สำเร็จรูป แต่เป็น "ชั้นกติกา + workflow + prompts + skills + templates" สำหรับใช้กำกับการทำงานใน repo Flutter หรือ mobile project

พูดง่าย ๆ คือ:

- `AGENTS.md` = กติกาหลัก
- `prompts/` = ทางเข้าของงานแบบ end-to-end
- `skills/` = ทักษะเฉพาะงานแบบแคบ
- `templates/` = รูปแบบเอกสารผลลัพธ์
- `docs/` = ความรู้ประกอบและ policy
- `project_memory/` = ความรู้ถาวรของโปรเจกต์

## ลิงก์อ้างอิงสำคัญของ repo

- `AGENTS.md`
- `README.md`
- `docs/skill-workflow-map.md`
- `docs/workflow-pipelines.md`
- `docs/pipeline-vs-skill.md`
- `docs/verification-workflow.md`
- `docs/project-memory-system.md`

## กติกาการดูแลคู่มือชุดนี้

ต่อจากนี้ ถ้ามีการเพิ่มหรือเปลี่ยนส่วนสำคัญใน repo นี้ เช่น:

- prompt ใหม่
- skill ใหม่
- workflow ใหม่
- docs ใหม่
- template ใหม่
- schema ใหม่
- lane ใหม่
- วิธีใช้งานหรือกติกาที่เปลี่ยนไป

ให้บันทึกและอัปเดตคู่มือในโฟลเดอร์ `obsidian/` ควบคู่กันไปด้วยเสมอ

เป้าหมายคือให้ `obsidian/` เป็นคู่มือภาษาไทยที่ตามทัน repo จริง ไม่ใช่เอกสารที่ค้างหลังโค้ดและ workflow
