# Agents, Antigravity, MCP และ Surfaces

หน้านี้อธิบายว่าควรใช้ surface ไหนเมื่อไร

## surfaces ที่ toolkit นี้รองรับ

- Codex / Codex-style
- Claude Code
- Grok Code
- Antigravity
- OpenClaw

## อ่านไฟล์ไหนสำหรับแต่ละ surface

### Codex

- `AGENTS.md`
- `CODEX.md`
- `prompts/`
- `skills/`

### Claude Code

- `CLAUDE.md`
- `AGENTS.md`

### Grok Code

- `GROK.md`
- `AGENTS.md`

### Antigravity

- `ANTIGRAVITY.md`
- `antigravity/README.md`
- `antigravity/workflows/`
- `antigravity/task-templates/`
- `antigravity/artifacts/`

### OpenClaw

- `OPENCLAW.md`
- `docs/install-openclaw.md`

## เลือก surface ยังไง

### ใช้ Codex เมื่อ

- ต้องแก้ไฟล์ใน repo หนัก ๆ
- ต้องใช้ prompts + skills ร่วมกัน
- ต้องทำ implementation จริง

### ใช้ Claude Code เมื่อ

- ต้องทำงานใน terminal เยอะ
- ต้องไล่ debug หรือ refactor ลึก

### ใช้ Antigravity เมื่อ

- งานมีหลาย phase
- ต้องมี artifact ชัด
- ต้องมี workflow shell ที่เข้ม

### ใช้ OpenClaw เมื่อ

- ต้อง orchestrate ผ่าน chat หรือ remote

## MCP ใช้เมื่อไร

MCP เหมาะเมื่อ:

- ต้องใช้ tooling เสริม เช่น Flutter/Dart MCP
- ต้องการ native Apple tooling ผ่าน MCP
- ต้องการ workflow ที่ไม่ใช่แค่ file editing ปกติ

ดู:

- `mcp/flutter-dart-mcp-setup.md`
- `docs/xcodebuildmcp-when-to-use.md`

## Antigravity แบบสั้นที่สุด

ถ้าจะใช้ Antigravity:

1. อ่าน `antigravity/README.md`
2. อ่าน rules ใต้ `antigravity/rules/`
3. เลือก workflow ที่ตรงงาน
4. ใช้ task template ถ้าจำเป็น
5. emit artifact

## ข้อควรจำ

Antigravity ไม่ได้แทน `AGENTS.md`

มันเป็น "workflow shell เพิ่ม" บนกติกาเดียวกัน

ไปต่อ: [[07-Tips เทคนิค และข้อควรระวัง]]

