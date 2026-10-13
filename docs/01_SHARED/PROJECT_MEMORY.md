# Project Memory System

## Tujuan
Menjaga kesinambungan lintas sesi AI dan lintas proyek. Dokumen ini adalah indeks, bukan tempat menyalin semua detail.

## Sumber kebenaran
1. `PROJECT_OVERVIEW.md` — konteks portofolio.
2. `PROJECT_CONTEXT.md` pada masing-masing proyek — tujuan dan batas proyek.
3. `DECISION_LOG.md` — keputusan beserta alasan dan status.
4. `TASK_BOARD.md` — pekerjaan aktif dan berikutnya.
5. `CHANGELOG.md` — perubahan yang telah dilakukan.
6. `SESSION_HANDOFF.md` — keadaan terbaru untuk sesi selanjutnya.
7. `OPEN_QUESTIONS.md` — hal yang belum diketahui.

## Format catatan
Setiap informasi penting sebaiknya memiliki:
- tanggal;
- proyek terkait;
- jenis: fakta / keputusan / asumsi / pertanyaan;
- status;
- alasan atau sumber;
- dampak terhadap pekerjaan berikutnya.

## Prosedur mulai sesi
1. Baca overview.
2. Baca handoff terbaru.
3. Baca konteks proyek yang sedang dikerjakan.
4. Periksa task board dan keputusan terkait.
5. Tanyakan hanya hal yang benar-benar belum ada atau bertentangan.

## Prosedur akhir sesi
1. Ringkas perubahan yang benar-benar dibuat.
2. Perbarui task board.
3. Tambahkan keputusan baru ke decision log.
4. Catat perubahan produk/berkas di changelog.
5. Isi handoff: status sekarang, hambatan, dan satu langkah berikutnya.
6. Jangan mengklaim implementasi berhasil bila belum diuji.

## Anti-amnesia
- Jangan menyimpan konteks hanya di chat.
- Jangan menimpa keputusan lama tanpa catatan perubahan.
- Jika dokumen saling bertentangan, tandai konflik dan minta klarifikasi.
- Simpan detail penting dalam file proyek, bukan hanya prompt panjang.
