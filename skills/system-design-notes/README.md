# system-design-notes skill bridge

โฟลเดอร์นี้ไม่ได้เป็น skill เชิง implementation โดยตรง แต่เป็น **skill bridge** สำหรับบอก agent ว่าเมื่อไรควรเปิดใช้ชุดโน้ต system design ภาษาไทย

## ใช้เมื่อไร
- โจทย์เกี่ยวกับ backend scale
- มีคำว่า feed, chat, sync, upload, search, nearby, rate limit, notification
- ต้องทำ design review ก่อนเขียนโค้ด
- ต้องสรุป trade-offs ให้ทีม

## ขั้นตอนแนะนำ
1. เปิด `obsidian/system-design-notes-th/00-system-design-home.md`
2. เลือก chapter ที่เกี่ยวข้อง
3. ใช้ `prompts/system_design_review_th.md`
4. ค่อยไป implementation skills อื่นของ toolkit

## Mapping เร็ว
- Rate limit / abuse → Chapter 04
- Partition / cache cluster → Chapter 05
- Distributed store → Chapter 06
- ID / offline sync key → Chapter 07
- Notifications → Chapter 10
- Feed / activity timeline → Chapter 11
- Realtime chat → Chapter 12
- Search suggestion → Chapter 13
- Video/media pipeline → Chapter 14
- File sync / document sync → Chapter 15
- Nearby / geolocation → Chapter 16
