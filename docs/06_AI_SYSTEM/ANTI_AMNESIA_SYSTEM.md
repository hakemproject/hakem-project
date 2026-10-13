# Anti-Amnesia System

## Tujuan
Mengurangi kehilangan konteks akibat sesi panjang, batas memori, perpindahan model, atau perpindahan alat.

## Lapisan memori
- **Lapisan 1 — Ringkasan:** `PROJECT_OVERVIEW.md`.
- **Lapisan 2 — Status terkini:** `SESSION_HANDOFF.md`.
- **Lapisan 3 — Tujuan dan batas proyek:** file `PROJECT_CONTEXT.md`.
- **Lapisan 4 — Keputusan:** `DECISION_LOG.md`.
- **Lapisan 5 — Pekerjaan:** `TASK_BOARD.md`.
- **Lapisan 6 — Riwayat perubahan:** `CHANGELOG.md`.
- **Lapisan 7 — Detail teknis:** dokumentasi arsitektur dan catatan teknis.

## Bila konteks terlalu besar
1. Pertahankan tujuan, keputusan aktif, status pekerjaan, risiko, dan next action.
2. Pindahkan detail lama ke dokumen proyek; jangan menumpuk semua ke handoff.
3. Tautkan dokumen, jangan salin seluruh isi.
4. Simpan keputusan yang dibatalkan beserta alasan agar tidak diusulkan lagi tanpa konteks.

## Bila berganti AI atau alat
- Berikan master prompt.
- Berikan daftar file wajib dibaca.
- Berikan tugas spesifik dan batas scope.
- Minta AI mengonfirmasi pemahaman sebelum perubahan berisiko.
- Verifikasi hasil secara independen.
