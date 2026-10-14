# ==============================================
# generate-v3-part3.ps1
# Master Doc v3 - Bagian 3 (Bab 11-18)
# ==============================================

$root = "C:\hakemproject"
Set-Location $root

Write-Host ""
Write-Host "=== Appending MASTER_DOC_v3.md - Part 3 ===" -ForegroundColor Cyan
Write-Host ""

$content = @'

---

## Bab 11: Strategi Marketing Mendalam

### 11.1 Positioning NADI

**Tagline Utama:**
Kebutuhan manusia, dipenuhi manusia.

**Tagline Marketing:**
Apa web kamu? - NADI, gratis untuk semua UMKM.

**Tagline Teknis:**
NADI: The Real-Time Pulse of Your City.

**Pitch untuk UMKM:**
NADI adalah rumah digital untuk usahamu. Gratis, mudah, keren. Cukup isi form 1 menit, kamu punya website sendiri. Tanpa coding, tanpa biaya.

**Pitch untuk Media/Investor:**
NADI adalah Yellow Pages modern yang mendigitalisasi 19 juta UMKM Indonesia. Bukan sekadar website builder, ini infrastruktur identitas digital.

**Pitch untuk Kreator:**
NADI adalah rumah digitalmu. Semua sosmed, portofolio, dan kontak dalam 1 URL. Gratis.

### 11.2 Segmentasi Audiens

**Segmen 1: UMKM Kecil (Target Utama)**
- Warung, bakso, kopi, laundry, salon, bengkel.
- Omzet: Rp 5 juta - Rp 50 juta/bulan.
- Tidak punya website.
- Prioritas: Punya online presence.
- Produk: NADI (gratis).

**Segmen 2: Kreator & Influencer**
- Content creator, YouTuber, TikToker.
- Prioritas: Personal branding, media kit.
- Produk: Hakem Media (premium).

**Segmen 3: Pekerja Lepas**
- Mekanik, tukang, freelancer.
- Prioritas: Portofolio, kontak.
- Produk: NADI (gratis).

**Segmen 4: Bisnis Menengah**
- Restoran, toko retail, klinik.
- Prioritas: Multi-page, katalog.
- Produk: NADI Tier 2-3 (upgrade).

### 11.3 Strategi Konten

**Fase 1: Seeding (Bulan 1-3)**
- Konten: Sebelum vs sesudah UMKM punya website.
- Platform: TikTok, Instagram Reels.
- Target: 10 UMKM pertama.
- Metrik: 100.000 views, 100 leads.

**Fase 2: Viral (Bulan 3-6)**
- Konten: Testimonial, studi kasus.
- Platform: TikTok, YouTube, Instagram.
- Target: 1000 UMKM.
- Metrik: 1 juta views, 1000 leads.

**Fase 3: Scale (Bulan 6-12)**
- Konten: Partnership, webinar.
- Platform: All channels.
- Target: 10.000 UMKM.
- Metrik: 5 juta views, 10.000 leads.

### 11.4 Strategi Komunitas

**Program Afiliasi:**
- Referral bonus untuk yang bantu promosi.
- 10 persen komisi untuk upgrade Tier 2+.

**Komunitas UMKM:**
- Grup WhatsApp untuk UMKM NADI.
- Event offline: workshop, meetup.
- Kolaborasi antar UMKM.

**Ambassador Program:**
- Mahasiswa sebagai ambassador kampus.
- UMKM sukses sebagai case study.

### 11.5 Metrik Marketing

**KPI Utama:**
- Jumlah UMKM onboarded.
- Active website (aktif dan diakses).
- Conversion rate (daftar ke publish).
- Retention (aktif setelah 30 hari).
- Referral rate (dari word-of-mouth).

**Fase 1 Target:**
- 10 UMKM onboarded.
- 8 website publish.
- 60 persen retention rate.
- 20 persen referral rate.

### 11.6 Strategi Anti-Hambatan

**Hambatan 1: "Saya tidak punya waktu."**
Solusi: Proses 1 menit. Bisa dari HP. Sambil santai.

**Hambatan 2: "Saya tidak bisa komputer."**
Solusi: Form sederhana. Tidak perlu skill. Bisa dibantu orang lain.

**Hambatan 3: "Nanti saja."**
Solusi: FOMO. "Apa web kamu?" Teman sudah punya.

**Hambatan 4: "Website itu mahal."**
Solusi: GRATIS. Tidak ada biaya tersembunyi.

**Hambatan 5: "Saya tidak punya foto bagus."**
Solusi: Cukup 3 foto. Foto HP juga bisa. Bisa pakai foto apa adanya.

---

## Bab 12: Sistem Anti-Amnesia

### 12.1 Prinsip

Dokumentasi adalah sumber kebenaran, bukan percakapan AI.

Setiap keputusan penting harus tercatat di dokumen, bukan hanya di chat.

### 12.2 Lapisan Dokumentasi

**Lapisan 1: Identitas**
- MASTER_DOC.md, PROJECT_PHILOSOPHY.md
- Fungsi: Visi, filosofi, nilai
- Frekuensi update: Jarang

**Lapisan 2: Teknis**
- ARCHITECTURE.md, STACK_DECISIONS.md
- Fungsi: Arsitektur, keputusan teknis
- Frekuensi update: Saat berubah

**Lapisan 3: Operasional**
- PROJECT_STATUS.md, NEXT_SESSION.md
- Fungsi: Status, titik melanjutkan
- Frekuensi update: Setiap sesi

### 12.3 Session Handoff Protocol

Setiap sesi kerja berakhir dengan:
1. Commit dan push.
2. Update PROJECT_STATUS.md.
3. Update NEXT_SESSION.md.
4. Catat keputusan baru di DECISION_LOG.md.

### 12.4 Cara Memulai Sesi Baru

1. Baca docs/PROJECT_STATUS.md
2. Baca docs/NEXT_SESSION.md
3. Baca docs/ARCHITECTURE.md
4. Baca docs/master/MASTER_DOC.md
5. Cek git log --oneline -10

### 12.5 Larangan

- JANGAN ubah struktur folder tanpa keputusan.
- JANGAN hapus worker mynadi-api.
- JANGAN ubah skema D1 tanpa migrasi.
- JANGAN commit file test.
- JANGAN push secret ke Git.

### 12.6 File Dokumentasi Wajib

- MASTER_DOC.md - Buku induk (ini)
- PROJECT_STATUS.md - Status terkini
- ARCHITECTURE.md - Arsitektur teknis
- NEXT_SESSION.md - Titik melanjutkan
- DECISION_LOG.md - Log keputusan
- storybook/03-journey.md - Timeline
- storybook/05-milestones.md - Milestones
- seo/ - 8 file dokumentasi SEO
- sql/ - Skema database

### 12.7 Manfaat Sistem Anti-Amnesia

**Untuk Anda:**
- Tidak perlu ingat semua detail.
- Bisa lanjut kapan saja.
- Bisa cek keputusan lama.

**Untuk AI Baru:**
- Cukup baca Master Doc, langsung paham.
- Tidak perlu jelaskan ulang.
- Bisa langsung kerja.

**Untuk Tim Baru:**
- Onboarding cepat.
- Tidak perlu tanya ke founder.
- Semua tercatat.

---

## Bab 13: Analisis AI Stack Lengkap

### 13.1 Perbandingan Utama

NADI menggunakan 3 AI utama. Masing-masing memiliki kekuatan dan kelemahan.

**Penilaian ini fokus pada kebutuhan pengembangan produk, bukan sekadar kualitas jawaban percakapan.**

| Kriteria | ChatGPT | Google AI Studio | DeepSeek |
|:---|:---|:---|:---|
| Nalar & strategi produk | 5/5 | 4/5 | 4/5 |
| Merancang arsitektur | 5/5 | 4/5 | 4/5 |
| Menulis & perbaiki kode | 4/5 | 4/5 | 4/5 |
| Membuat prototipe AI | 3/5 | 5/5 | 3/5 |
| Kontinuitas proyek panjang | 3/5 | 3/5 | 3/5 |
| Menghindari biaya langganan | 3/5 | 5/5 | 5/5 |
| Menjadi satu-satunya alat | 3/5 | 3/5 | 3/5 |

**Catatan Skor:**
- Skor ini analitis, bukan benchmark laboratorium.
- Ketersediaan model dan kuota dapat berubah.
- Tidak satu pun AI yang sempurna.

### 13.2 Analisis Detail per AI

**ChatGPT - Mitra Diskusi Arsitektur dan Bisnis**

Kegunaan:
- Mempertanyakan asumsi.
- Menguji prioritas.
- Merumuskan MVP.
- Menyusun roadmap.
- Memastikan fitur baru tidak menyimpang.

Kelebihan:
- Nalar kuat.
- Konteks panjang.
- Bisa analisis multi-dimensi.

Kelemahan:
- Kuota terbatas (Free).
- Fitur premium (Plus).

**Google AI Studio - Mengubah Ide Menjadi Eksperimen**

Kegunaan:
- Membuktikan alur AI.
- Testing prompt.
- Prototipe model Gemini.
- Integrasi API.

Kelebihan:
- Akses model Gemini terbaru.
- Gratis (dengan kuota).
- Bagus untuk prototipe.

Kelemahan:
- Learning curve.
- Berbeda dari ChatGPT.

**DeepSeek - Menguji Solusi dan Alternatif**

Kegunaan:
- Pendekatan implementasi lain.
- Mencari penyebab bug.
- Meninjau logika.
- Memeriksa apakah rancangan bisa disederhanakan.

Kelebihan:
- Biaya murah.
- Kualitas coding baik.
- Konteks panjang.

Kelemahan:
- Bahasa Indonesia kurang natural.
- Ekosistem lebih kecil.

### 13.3 Strategi Pembagian Tugas

**ChatGPT Free - Arsitek dan Partner Strategi:**
- Keputusan besar yang berpengaruh sistem.
- Analisis kebutuhan.
- Spesifikasi.
- Review rancangan.
- Hemat kuota dengan menyimpan konteks di repo.

**Google AI Studio - Laboratorium Prototipe:**
- Menguji ide dan integrasi AI.
- Bukan sebagai satu-satunya tempat penyimpanan source code.
- Periksa kuota sebelum eksperimen besar.

**DeepSeek - Asisten Coding Cadangan:**
- Debugging.
- Implementasi alternatif.
- Meninjau perubahan.
- API dipertimbangkan nanti.

### 13.4 Alur Kerja Sehari-hari

1. Docs + Git sebagai sumber kebenaran.
2. ChatGPT: rancang tugas dan kriteria selesai.
3. Implementasi satu fitur kecil.
4. AI alternatif (DeepSeek): review atau debugging.
5. Jalankan tes dan periksa diff.
6. Jika lulus: commit ke Git + perbarui dokumentasi.
7. Tugas berikutnya.

### 13.5 Masalah Amnesia AI

**Masalah:**
- AI tidak punya ingatan permanen.
- Konteks hilang saat sesi baru.
- Hasil: kerja berulang, tidak efisien.

**Solusi:**
Bukan mencari AI yang tidak lupa, tapi membuat proyek punya ingatan sendiri, di luar percakapan AI.

**File Wajib:**
1. PROJECT_CONTEXT.md - Visi, pengguna, positioning.
2. ARCHITECTURE.md - Struktur sistem.
3. ROADMAP.md & TASKS.md - Status fitur.
4. DECISIONS.md & CHANGELOG.md - Alasan keputusan.

### 13.6 Kesimpulan AI Stack

**Untuk NADI:**
- ChatGPT Free: partner arsitektur dan strategi.
- Google AI Studio: tempat eksperimen AI.
- DeepSeek: jalur alternatif coding.
- Tidak satu pun harus menjadi pusat permanen.

**Yang menjadi pusat:**
- Dokumentasi.
- Repository.
- Tes.
- Keputusan teknis yang konsisten.

**Dengan demikian, keterbatasan fitur Pro tidak harus menghentikan pengembangan NADI, Web Builder, maupun Hakem Media.**

---

## Bab 14: Peran AI dalam Proyek

### 14.1 Filosofi AI

**AI adalah tenaga bantu yang bisa diganti.**
**Dokumentasi adalah sumber kebenaran.**
**Jangan bergantung pada satu AI.**

### 14.2 Aturan Kerja AI

1. Baca sebelum mengubah.
2. Satu tugas, satu ruang lingkup.
3. Rencanakan sebelum coding.
4. Verifikasi, bukan berasumsi.
5. Dokumentasikan hasil.
6. Commit ketika stabil.

### 14.3 Transparansi AI di NADI

**Aturan NADI:**
- AI mengaku sebagai AI.
- Manusia dikenalkan sebagai manusia.
- Tidak boleh AI berpura-pura menjadi manusia.

**Implementasi:**
- Sistem pesan: "Saya AI NADI."
- Handoff: "Ini manusia/bisnis nyata: [Nama]."
- Tidak ada persona palsu.

**Alasan:**
- Masyarakat Indonesia masih sulit membedakan AI dan manusia.
- NADI justru unggul dengan transparansi.
- Kepercayaan adalah diferensiasi NADI.

### 14.4 Agen & Peran (Roadmap)

**Agent 1 - Project Architect:**
- Tugas: Menjaga batas produk, menguji rancangan, menyusun spesifikasi.
- Hasil: Proposal arsitektur, diagram, daftar trade-off.
- Larangan: Mengklaim kode berjalan tanpa bukti.

**Agent 2 - Developer:**
- Tugas: Mengerjakan satu task sesuai spesifikasi.
- Hasil: Source code, daftar file yang diubah.
- Larangan: Mengganti stack tanpa persetujuan.

**Agent 3 - Reviewer/QA:**
- Tugas: Memeriksa kesesuaian requirement, menemukan bug.
- Hasil: Temuan diurutkan berdasarkan risiko.
- Larangan: Menyetujui tanpa bukti.

**Agent 4 - Design & Product:**
- Tugas: Menjaga identitas, memeriksa user flow.
- Hasil: Spesifikasi UI, perubahan desain yang disetujui.
- Larangan: Mengganti desain tanpa persetujuan.

**Agent 5 - Documentation & Handoff:**
- Tugas: Memperbarui konteks, task, keputusan.
- Hasil: Dokumentasi siap untuk AI lain.
- Larangan: Mengubah status tanpa konfirmasi.

### 14.5 MASTER PROMPT (Referensi)

Setiap AI yang bergabung ke proyek NADI harus diberikan MASTER PROMPT yang berisi:
1. Konteks proyek (NADI, HakemProject, 3 produk).
2. Sumber kebenaran (dokumen, source code).
3. Aturan (jangan karang, jangan ganti stack).
4. Sebelum coding: pahami tugas, file yang dibaca, file yang diubah, risiko.
5. Setelah coding: file berubah, ringkasan, tes, risiko, langkah berikutnya.

---

## Bab 15: Model Bisnis dan Monetisasi

### 15.1 Strategi Monetisasi

**Free First, Monetize Later:**
- Tier 1 gratis untuk akuisisi massal.
- Monetisasi di Tier 2+ (Pro, Business, Enterprise).

**Model Bisnis:**
- Freemium: Tier 1 gratis, Tier 2+ berbayar.
- Services: Hakem Media untuk custom.
- Marketplace: Komisi transaksi (nanti).
- Advertising: Iklan lokal (nanti).

### 15.2 Estimasi Biaya

**Cloudflare Free Tier:**
- Worker: 100.000 req/hari (gratis).
- D1: 5 juta row reads/hari (gratis).
- R2: 10 GB storage (gratis).
- Pages: 500 builds/bulan (gratis).

**Estimasi per 1000 Node:**
- Storage R2: sekitar 340 MB (gratis).
- D1 reads: sekitar 10.000/hari (gratis).
- Worker req: sekitar 100.000/hari (gratis).

**Biaya Scale (1 juta Node):**
- Storage R2: sekitar 340 GB (perlu bayar).
- D1: Perlu sharding.
- Worker: Perlu Workers for Platforms.

### 15.3 Trigger Monetisasi

**Kapan mulai berbayar?**
- Setelah 10.000 Node aktif.
- Setelah ada traction (retention lebih dari 60 persen).
- Setelah ada tim yang cukup.

**Target Revenue:**
- Tahun 1: Rp 0 (fokus akuisisi).
- Tahun 2: Rp 100 juta (Tier 2+).
- Tahun 3: Rp 1 miliar (Tier 3+).
- Tahun 5: Rp 10 miliar (ekosistem).

### 15.4 Prinsip "Gratis tapi Berkelanjutan"

**Gratis untuk UMKM ≠ Gratis bagi Infrastruktur.**

19 juta Node memiliki biaya:
- Storage.
- Bandwidth.
- Image processing.
- Database.
- Requests.
- Abuse protection.

**Target:**
- UMKM mendapatkan website gratis.
- NADI tetap sustainable secara finansial.

### 15.5 Model Bisnis Lanjutan (Visi)

**Freemium (Fase 2-3):**
- Free: Tier 1.
- Pro: Rp 50.000/tahun.
- Business: Rp 200.000/tahun.

**Services (Fase 3-4):**
- Hakem Media custom website.
- Konsultasi branding.
- Setup domain.

**Marketplace (Fase 4-5):**
- Komisi transaksi (2-5 persen).
- Featured listing.
- Iklan lokal.

**Network (Fase 5-6):**
- Premium NADI Hub.
- B2B services.
- Data insights (anonim).

---

## Bab 16: Diskusi Domain dan Naming

### 16.1 Kandidat Domain

Beberapa kandidat domain dipertimbangkan:
- nadi.id
- nadi.com
- nadiku.id
- nadiq.id
- mynadi.my.id
- mynadi.id
- mynadi.com

### 16.2 Analisis Kandidat Domain

**nadi.id:**
- Status: Mahal/tidak tersedia.
- Kekuatan: Sempurna, singkat, langsung.
- Kelemahan: Biaya tinggi.
- Keputusan: Goal akhir saja.

**nadi.com:**
- Status: Terdaftar sejak 18 Juli 1996 (MarkMonitor).
- Kekuatan: Global.
- Kelemahan: Bukan target realistis (harus acquisition).
- Keputusan: Jangan dijadikan dependency.

**nadiku.id:**
- Status: Tersedia (Rp 99.000 promo, Rp 298.000 untuk 2 tahun).
- Kekuatan: NADI-ku, cocok Bahasa Indonesia.
- Kelemahan: Sangat Indonesia, tidak global.
- Keputusan: Turun prioritas.

**nadiq.id:**
- Status: Tersedia.
- Kekuatan: Modern.
- Kelemahan: "Q" tidak jelas (harus dijelaskan).
- Keputusan: Tidak dipilih.

**nadiku.com:**
- Status: Sudah dipakai platform kesehatan.
- Kekuatan: Pendek.
- Kelemahan: Brand confusion.
- Keputusan: Tidak dipertimbangkan.

**mynadi.my.id:**
- Status: Tersedia (Rp 9.900 tahun pertama).
- Kekuatan: MY NADI bisa dibaca lintas bahasa, murah, fleksibel.
- Kelemahan: Sedikit panjang.
- Keputusan: PILIHAN UTAMA.

**mynadi.id:**
- Status: Belum dicek, kemungkinan tersedia.
- Kekuatan: Lebih premium dari my.id.
- Kelemahan: Lebih mahal (Rp 99.000/tahun).
- Keputusan: Tahap menengah.

**mynadi.com:**
- Status: Belum dicek.
- Kekuatan: Global.
- Kelemahan: Belum tahu harga.
- Keputusan: Tahap global.

### 16.3 Keputusan Final Naming

**Brand Utama:** NADI
**Alamat Digital Sekarang:** mynadi.pages.dev
**Alamat Digital Berikutnya:** mynadi.my.id
**Goal Akhir:** nadi.id (jika modal cukup)

**Struktur Domain Jangka Panjang:**
- Indonesia: mynadi.my.id, mynadi.id
- Asia: mynadi.asia, mynadi.com
- Global: nadi.com (jika bisa diperoleh)

**Prinsip:**
- Brand tetap NADI (bukan MYNADI).
- MYNADI adalah alamat/ekosistem, bukan brand.
- Domain beradaptasi mengikuti tahap perkembangan.
- node_id adalah identitas permanen, domain hanya alias.

### 16.4 Filosofi "MY" dalam MYNADI

**Cerita Sebenarnya:**
1. NADI adalah nama/brand utama yang diinginkan.
2. nadi.pages.dev sudah dipakai orang lain.
3. Perlu alternatif.
4. MYNADI muncul (mynadi.pages.dev).
5. Kemudian baru terasa cocok: MY NADI / NADI-ku.

**Jadi MYNADI bukan nama pengganti NADI. Ia lahir karena kebutuhan praktis, lalu ternyata punya makna tambahan yang bagus.**

**Makna "MY":**
- Indonesia: NADI-ku.
- English: My NADI.
- Global: My NADI (universal).
- Filosofi: Jaringan manusia yang bisa saya akses.

**Konsep Lanjutan:**
- MY NADI (saya)
- YOUR NADI (kamu)
- OUR NADI (kita semua)
- NADI NETWORK

### 16.5 Filosofi Logo NADI

**Konsep:**
- Dua grafik denyut nadi.
- Merah = manusia.
- Biru = teknologi/AI.
- Membentuk tulisan NADI secara subtil.
- Terinspirasi filosofi logo KIA terbaru (tidak langsung terbaca).

**Prinsip Desain:**
- Orang awalnya melihatnya sebagai denyut/gelombang.
- Setelah diperhatikan, baru sadar "oh, ternyata membentuk NADI".
- Identitas lebih khas, ada unsur "discovery".

**Favicon:** versi simplified dari logo.

---

## Bab 17: Konsep Masa Depan

### 17.1 NADI Hub (Fase 4)

**Target:** Discovery dan Search.

**Fitur:**
- Direktori UMKM berdasarkan kategori.
- Pencarian berdasarkan lokasi dan radius.
- Filter availability dan capability.
- Showcase UMKM terbaik.
- Review dan rating.

**Teknologi:**
- Spatial query di D1 (via koordinat).
- Geofencing (radius).
- Search indexing.

**Contoh Penggunaan:**
- "Bakso di Surabaya" → daftar warung bakso.
- "Bengkel motor terdekat" → daftar bengkel dengan lokasi.
- "Laundry radius 3 km" → daftar laundry sekitar.

### 17.2 NADI AI - Dispatcher (Fase 5)

**Target:** AI Dispatcher (bukan chatbot).

**Fitur:**
- Understand user intent (natural language).
- Screening (radius, availability, capability).
- Match dengan manusia tepat.
- WhatsApp handoff.
- Handoff ke manusia (bukan AI menyelesaikan).

**Contoh Lengkap: "Motor Mogok"**
User: "Motor saya mogok."

NADI AI:
1. Intent detection: butuh mekanik
2. Location: user location atau input
3. Radius: 3 km
4. Capability: service motor
5. Availability: buka sekarang
6. Ranking: paling dekat + rating
7. Handoff: "Saya temukan Bengkel Maju, 1.8 km dari Anda. Hubungi WhatsApp?"

**Screening Bertingkat:**
- 100 bengkel → 20 radius terdekat → 8 menerima panggilan → 4 sedang buka → 2 tersedia sekarang → 1 paling cocok.

**Prinsip:**
AI bukan pengganti mekanik. AI menjadi jembatan antara kebutuhan manusia dan manusia yang mampu memenuhi kebutuhan tersebut.

### 17.3 NADI Network Global (Fase 6)

**Target:** Asia dan Global.

**Ekspansi:**
- Indonesia (base)
- Malaysia
- Singapura
- Filipina
- Asia Tenggara
- Global

**Strategi Domain:**
- Indonesia: mynadi.my.id, mynadi.id
- Asia: mynadi.asia, mynadi.com
- Global: nadi.com (jika bisa didapat)

### 17.4 AI Architect (Proyek Masa Depan)

**Konsep:**
Proyek masa depan di bawah HakemProject. Bukan proyek keempat yang perlu dibangun sekarang.

**Fungsi:**
- Membantu analisis dan arsitektur sistem.
- Untuk saat ini, kemampuan arsitektur AI diterapkan melalui dokumentasi dan aturan kerja.

**Status:** Ditambahkan saat sudah siap dikembangkan.

### 17.5 Visi Jangka Panjang

**2026:** NADI Builder live, 1000 Node.
**2027:** NADI Hub, 100.000 Node.
**2028:** NADI AI Dispatcher, 1 juta Node.
**2029:** Ekspansi Asia, 5 juta Node.
**2030+:** NADI Network Global, 19 juta Node.

### 17.6 Filosofi Network Effect

**Flywheel NADI:**
Website Gratis → Banyak UMKM → Banyak NADI Node → Data jaringan bertambah → NADI Hub semakin berguna → Semakin banyak manusia menggunakan NADI → Semakin banyak kebutuhan masuk → AI semakin berguna → Semakin banyak manusia menemukan manusia → NADI semakin bernilai → Lebih banyak UMKM masuk.

### 17.7 Trust Layer NADI

**Fondasi Kepercayaan:**
Ketika NADI mengatakan "Kami menemukan mekanik terdekat", pengguna harus percaya bahwa mekanik itu benar-benar ada.

**Elemen Trust:**
- Nomor WhatsApp terverifikasi.
- Lokasi terverifikasi.
- Website aktif.
- Sosmed terhubung.
- Identitas bisnis.
- Rating/review (nanti).
- Riwayat transaksi (nanti).
- Availability (nanti).

**Bukan semua harus ada pada MVP. Tapi arsitekturnya harus memungkinkan.**

---

## Bab 18: Referensi dan Lampiran

### 18.1 Website Live

| Website | URL |
|:---|:---|
| NADI Home | https://mynadi.pages.dev |
| NADI Builder | https://mynadi.pages.dev/builder |
| Hakem Media | https://hakem-media.pages.dev |
| Portofolio | https://hakem-project.pages.dev |
| Holland Bangka | https://holland-bangka.pages.dev |
| Pusat Wifi | https://pusat-wifi.pages.dev |

### 18.2 Backend

| Layanan | URL |
|:---|:---|
| Worker API | https://mynadi-api.hakemproject.workers.dev |
| Health Check | https://mynadi-api.hakemproject.workers.dev/api/health |

### 18.3 Repository dan Dashboard

- GitHub Repo: https://github.com/hakemproject/hakem-project
- GitHub Akun: https://github.com/hakemproject
- Cloudflare Dashboard: https://dash.cloudflare.com

### 18.4 Dokumentasi Internal

- Master Doc: docs/master/MASTER_DOC.md
- Status: docs/PROJECT_STATUS.md
- Arsitektur: docs/ARCHITECTURE.md
- Titik Melanjutkan: docs/NEXT_SESSION.md
- Timeline: docs/storybook/03-journey.md
- Milestones: docs/storybook/05-milestones.md
- SEO: docs/seo/
- SQL Schema: docs/sql/

### 18.5 Referensi Eksternal

- Cloudflare Workers: https://developers.cloudflare.com/workers/
- Cloudflare D1: https://developers.cloudflare.com/d1/
- Cloudflare R2: https://developers.cloudflare.com/r2/
- Cloudflare Pages: https://developers.cloudflare.com/pages/
- Schema.org LocalBusiness: https://schema.org/LocalBusiness
- Google Search Central: https://developers.google.com/search
- Web.dev Core Web Vitals: https://web.dev/vitals/

### 18.6 Lampiran: Prinsip Proyek

1. Pelan tapi pasti dan presisi.
2. Satu langkah, satu verifikasi.
3. Fungsional dulu, cantik kemudian.
4. Jangan hapus sebelum audit.
5. Keamanan tidak bisa dikompromikan.
6. Dokumentasi adalah sumber kebenaran.
7. AI adalah tenaga bantu yang bisa diganti.
8. Think 19 million. Build for 1.
9. Setiap keputusan harus tercatat.
10. Jangan jatuh cinta pada visi sampai data membuktikannya.

### 18.7 Lampiran: Lima Keputusan Arsitektur (Terkunci)

1. Brand: NADI
2. Filosofi: Kebutuhan manusia dipenuhi manusia.
3. AI: Perantara/screening/dispatcher.
4. Identitas: NADI Node.
5. Website: Onboarding mechanism.

### 18.8 Lampiran: Definisi "19 Juta Berhasil"

Bukan: "19 juta website aktif."

Tapi: "19 juta NADI Node dapat dibuat, disimpan, dirutekan, dipublikasikan, dan diakses menggunakan satu shared platform architecture."

### 18.9 Lampiran: Analogi NADI

**Tubuh Manusia:**
- Jantung
- Pembuluh
- Darah
- Seluruh tubuh
- Kehidupan

**NADI:**
- Kebutuhan
- NADI AI
- NADI Network
- Manusia
- Solusi

**Kesimpulan:**
NADI adalah urat nadi yang menghubungkan manusia di dalam kehidupan nyata.

### 18.10 Lampiran: Quote Inspiratif

> "Kebutuhan manusia, dipenuhi manusia."

> "AI membantu manusia menemukan manusia. AI bukan pengganti."

> "Think 19 million. Build for 1."

> "Jangan jatuh cinta pada visi sampai data membuktikannya."

> "Manusia menemukan manusia. Itu NADI."

---

## PENUTUP

Dokumen ini adalah buku induk ekosistem digital NADI.

Setiap keputusan, filosofi, strategi, dan rencana tercatat di sini. Ketika sesi baru dimulai, ketika AI baru bergabung, ketika tim baru bergabung - cukup baca dokumen ini.

**Dokumen ini hidup. Akan terus di-update seiring perkembangan proyek.**

**Visi:**
Setiap UMKM Indonesia berhak punya identitas digital.
Setiap orang berhak menemukan bantuan dari manusia nyata.

**Think 19 million. Build for 1.**

**Terakhir di-update:** 15 Oktober 2026
**Versi:** 3.0 (Lengkap 100%)
**Status:** Aktif
'@

Add-Content -Path "$root\docs\master\MASTER_DOC_v3.md" -Value $content -Encoding UTF8

Write-Host "[OK] MASTER_DOC_v3.md - Bagian 3 ditambahkan" -ForegroundColor Green
Write-Host ""
Get-Item "docs\master\MASTER_DOC_v3.md" | Select-Object Name, Length
Write-Host ""
Write-Host "=== SELESAI ===" -ForegroundColor Cyan