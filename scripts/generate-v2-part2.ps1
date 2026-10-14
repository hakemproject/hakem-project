# ==============================================
# generate-v2-part2.ps1
# Master Doc v2 - Bagian 2 (Bab 9-15)
# ==============================================

$root = "C:\hakemproject"
Set-Location $root

Write-Host ""
Write-Host "=== Appending MASTER_DOC_v2.md - Part 2 ===" -ForegroundColor Cyan
Write-Host ""

$content = @'

---

## Bab 9: Decision Log Lengkap

### D-001: Monorepo Strategy
**Status:** ACCEPTED | **Tanggal:** 12 Oktober 2026

**Konteks:** Punya beberapa proyek terkait (NADI, Builder, Hakem Media, klien).
**Keputusan:** Pakai monorepo tunggal hakem-project.
**Alasan:** Mudah sinkronisasi, satu sumber kebenaran, satu Git history.
**Konsekuensi:** Semua commit mempengaruhi semua website.

### D-002: Naming MYNADI
**Status:** ACCEPTED | **Tanggal:** 14 Oktober 2026

**Konteks:** Domain nadi.id mahal atau tidak tersedia.
**Keputusan:** Pakai mynadi.my.id dulu, nadi.id sebagai goal akhir.
**Alasan:** MY NADI bisa dibaca lintas bahasa (My NADI = NADI-ku).
**Konsekuensi:** Brand NADI tetap, domain beradaptasi.

### D-003: Subdomain Strategy
**Status:** ACCEPTED | **Tanggal:** 14 Oktober 2026

**Konteks:** NADI targetkan 19 juta UMKM.
**Keputusan:** Pakai wildcard subdomain *.mynadi.my.id.
**Alasan:** Satu Worker melayani jutaan subdomain.
**Konsekuensi:** Butuh custom domain dan Dispatch Worker.

### D-004: NADI dan Builder 1 Website
**Status:** ACCEPTED | **Tanggal:** 14 Oktober 2026

**Konteks:** Apakah Builder website terpisah?
**Keputusan:** Builder jadi subfolder nadi: mynadi.pages.dev/builder.
**Alasan:** Brand terpadu, SEO kuat, link juice terkumpul.
**Konsekuensi:** Struktur folder projects/nadi/builder.

### D-005: Worker API
**Status:** ACCEPTED | **Tanggal:** 14 Oktober 2026

**Konteks:** Butuh backend untuk data UMKM.
**Keputusan:** Pakai Cloudflare Workers dengan nama mynadi-api.
**Alasan:** Serverless, cepat, terintegrasi dengan D1 dan R2.
**Konsekuensi:** Runtime V8 Isolates (bukan Node.js).

### D-006: Database D1
**Status:** ACCEPTED | **Tanggal:** 14 Oktober 2026

**Konteks:** Butuh database untuk data UMKM.
**Keputusan:** Pakai Cloudflare D1 (SQLite) dengan nama mynadi-db.
**Alasan:** Terintegrasi dengan Workers, murah, cepat.
**Konsekuensi:** Tabel nodes, node_images, node_socials, domains.

### D-007: 3 Foto Wajib
**Status:** ACCEPTED | **Tanggal:** 14 Oktober 2026

**Konteks:** Apakah perlu banyak foto?
**Keputusan:** Hanya 3 foto: owner, usaha, produk.
**Alasan:** Fokus, ringan, cukup untuk trust.
**Konsekuensi:** Total sekitar 340 KB per Node.

### D-008: WhatsApp First
**Status:** ACCEPTED | **Tanggal:** 14 Oktober 2026

**Konteks:** Apa conversion engine utama?
**Keputusan:** WhatsApp sebagai CTA utama.
**Alasan:** Universal di Indonesia, tanpa app tambahan.
**Konsekuensi:** CTA WhatsApp sticky di setiap Node.

### D-009: Kebab-case URLs
**Status:** ACCEPTED | **Tanggal:** 14 Oktober 2026

**Konteks:** Format URL untuk SEO.
**Keputusan:** Pakai kebab-case (bakso-pak-joko).
**Alasan:** Google lebih suka, mudah dibaca, standar industri.
**Konsekuensi:** Slug auto-generate dalam kebab-case.

### D-010: Free Tier First
**Status:** ACCEPTED | **Tanggal:** 14 Oktober 2026

**Konteks:** Monetisasi NADI.
**Keputusan:** Tier 1 gratis. Monetisasi di Tier 2+.
**Alasan:** Akuisisi massal, network effect.
**Konsekuensi:** Butuh model bisnis untuk keberlanjutan.

### D-011: Subdomain Rename
**Status:** ACCEPTED | **Tanggal:** 14 Oktober 2026

**Konteks:** Subdomain default Cloudflare pusatwifiindonesia.workers.dev.
**Keputusan:** Rename ke hakemproject.workers.dev.
**Alasan:** Konsistensi brand induk usaha.
**Konsekuensi:** URL Worker baru.

### D-012: Portfolio dan Storybook
**Status:** ACCEPTED | **Tanggal:** 14 Oktober 2026

**Konteks:** Apa fungsi hakem-project.pages.dev?
**Keputusan:** Jadikan portofolio dan storybook Lukmanul Hakim.
**Alasan:** Wajah induk usaha, referensi investor dan media.
**Konsekuensi:** Butuh konten portofolio dan dokumentasi.

---

## Bab 10: Timeline Perjalanan

### Fase 0: Ide dan Eksplorasi (Sebelum Oktober 2026)

- Ide NADI lahir dari pengalaman pribadi: mencari mekanik saat mogok di jalan.
- Filosofi terbentuk: Kebutuhan manusia dipenuhi manusia.
- Nama NADI dipilih (urat nadi kehidupan).
- MYNADI diciptakan sebagai solusi domain.

### 12 Oktober 2026

- Audit struktur folder lama.
- Keputusan: monorepo tunggal untuk 3 produk.
- Rombak total: NADI, Web Builder, Hakem Media.

### 13 Oktober 2026

- Rename Web Builder menjadi Builder (sebagai fitur NADI).
- Buat 8 file dokumentasi SEO.
- Hapus repo hakem-template (usang).

### 14 Oktober 2026 (Hari Besar)

- Setup Git: init repo, commit pertama.
- GitHub: push struktur monorepo.
- Cloudflare Pages live: NADI Home, NADI Builder, Hakem Media, Portofolio.
- Worker API: mynadi-api live.
- Database D1: mynadi-db dengan 4 tabel.
- CRUD API: POST dan GET berhasil.
- Node test: bakso-pak-joko.
- Subdomain: pusatwifiindonesia berubah menjadi hakemproject.

### 15 Oktober 2026

- Test PUT dan DELETE endpoint.
- CRUD API lengkap (POST, GET, PUT, DELETE).
- Bersihkan file tidak terpakai (arsip, test files).
- Update dokumentasi (PROJECT_STATUS, ARCHITECTURE, NEXT_SESSION).
- Master Doc v2 (dokumen ini) dibuat.

### Sedang Berlangsung (Fase 2)

- Menunggu pembelian domain mynadi.my.id.
- Setup custom domain Cloudflare.
- Setup R2 Bucket.
- Integrasi Builder dengan API.

---

## Bab 11: Strategi Marketing Mendalam

### 11.1 Positioning NADI

Tagline Utama: Kebutuhan manusia, dipenuhi manusia.

Tagline Marketing: Apa web kamu? - NADI, gratis untuk semua UMKM.

Tagline Teknis: NADI: The Real-Time Pulse of Your City.

### 11.2 Segmentasi Audiens

Segmen 1: UMKM Kecil (Target Utama)
- Warung, bakso, kopi, laundry, salon, bengkel.
- Omzet: Rp 5 juta - Rp 50 juta per bulan.
- Tidak punya website.
- Prioritas: Punya online presence.

Segmen 2: Kreator dan Influencer
- Content creator, YouTuber, TikToker.
- Prioritas: Personal branding, media kit.
- Target: Hakem Media (premium).

Segmen 3: Pekerja Lepas
- Mekanik, tukang, freelancer.
- Prioritas: Portofolio, kontak.
- Target: NADI (gratis).

### 11.3 Strategi Konten

Fase 1: Seeding (Bulan 1-3)
- Konten: Sebelum vs sesudah UMKM punya website.
- Platform: TikTok, Instagram Reels.
- Target: 10 UMKM pertama.
- Metrik: 100.000 views, 100 leads.

Fase 2: Viral (Bulan 3-6)
- Konten: Testimonial, studi kasus.
- Platform: TikTok, YouTube, Instagram.
- Target: 1000 UMKM.
- Metrik: 1 juta views, 1000 leads.

Fase 3: Scale (Bulan 6-12)
- Konten: Partnership, webinar.
- Platform: All channels.
- Target: 10.000 UMKM.
- Metrik: 5 juta views, 10.000 leads.

### 11.4 Strategi Komunitas

Program Afiliasi:
- Referral bonus untuk yang bantu promosi.
- 10 persen komisi untuk upgrade Tier 2+.

Komunitas UMKM:
- Grup WhatsApp untuk UMKM NADI.
- Event offline: workshop, meetup.
- Kolaborasi antar UMKM.

Ambassador Program:
- Mahasiswa sebagai ambassador kampus.
- UMKM sukses sebagai case study.

### 11.5 Metrik Marketing

KPI Utama:
- Jumlah UMKM onboarded.
- Active website (aktif dan diakses).
- Conversion rate (daftar ke publish).
- Retention (aktif setelah 30 hari).
- Referral rate (dari word-of-mouth).

Fase 1 Target:
- 10 UMKM onboarded.
- 8 website publish.
- 60 persen retention rate.
- 20 persen referral rate.

---

## Bab 12: Sistem Anti-Amnesia

### 12.1 Prinsip

Dokumentasi adalah sumber kebenaran, bukan percakapan AI.

Setiap keputusan penting harus tercatat di dokumen, bukan hanya di chat.

### 12.2 Lapisan Dokumentasi

Lapisan 1: Identitas
- MASTER_DOC.md, PROJECT_PHILOSOPHY.md
- Fungsi: Visi, filosofi, nilai.
- Frekuensi update: Jarang.

Lapisan 2: Teknis
- ARCHITECTURE.md, STACK_DECISIONS.md
- Fungsi: Arsitektur, keputusan teknis.
- Frekuensi update: Saat berubah.

Lapisan 3: Operasional
- PROJECT_STATUS.md, NEXT_SESSION.md
- Fungsi: Status, titik melanjutkan.
- Frekuensi update: Setiap sesi.

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
4. Baca docs/master/MASTER_DOC_v2.md
5. Cek git log --oneline -10

### 12.5 Larangan

- JANGAN ubah struktur folder tanpa keputusan.
- JANGAN hapus worker mynadi-api.
- JANGAN ubah skema D1 tanpa migrasi.
- JANGAN commit file test.
- JANGAN push secret ke Git.

---

## Bab 13: Peran AI dalam Proyek

### 13.1 Filosofi AI

AI adalah tenaga bantu yang bisa diganti.
Dokumentasi adalah sumber kebenaran.
Jangan bergantung pada satu AI.

### 13.2 Pembagian Tugas AI

ChatGPT - Arsitek dan Strategi:
- Keputusan besar
- Analisis kebutuhan
- Spesifikasi
- Review rancangan
- Sumber: Kelebihan reasoning, konteks panjang.

Google AI Studio Gemini - Laboratorium Prototipe:
- Eksperimen AI
- Testing prompt
- Prototipe fitur
- Sumber: Akses model Gemini terbaru.

DeepSeek - Asisten Coding Cadangan:
- Debugging
- Review kode
- Implementasi alternatif
- Sumber: Biaya murah, kualitas coding baik.

### 13.3 Aturan Kerja AI

1. Baca sebelum mengubah.
2. Satu tugas, satu ruang lingkup.
3. Rencanakan sebelum coding.
4. Verifikasi, bukan berasumsi.
5. Dokumentasikan hasil.
6. Commit ketika stabil.

### 13.4 Transparansi AI

Aturan NADI:
- AI mengaku sebagai AI.
- Manusia dikenalkan sebagai manusia.
- Tidak boleh AI berpura-pura menjadi manusia.

Implementasi:
- Sistem pesan: Saya AI NADI.
- Handoff: Ini manusia/bisnis nyata: [Nama].
- Tidak ada persona palsu.

---

## Bab 14: Model Bisnis dan Monetisasi

### 14.1 Strategi Monetisasi

Free First, Monetize Later:
- Tier 1 gratis untuk akuisisi massal.
- Monetisasi di Tier 2+ (Pro, Business, Enterprise).

Model Bisnis:
- Freemium: Tier 1 gratis, Tier 2+ berbayar.
- Services: Hakem Media untuk custom.
- Marketplace: Komisi transaksi (nanti).
- Advertising: Iklan lokal (nanti).

### 14.2 Estimasi Biaya

Cloudflare Free Tier:
- Worker: 100.000 req per hari (gratis).
- D1: 5 juta row reads per hari (gratis).
- R2: 10 GB storage (gratis).
- Pages: 500 builds per bulan (gratis).

Estimasi per 1000 Node:
- Storage R2: sekitar 340 MB (gratis).
- D1 reads: sekitar 10.000 per hari (gratis).
- Worker req: sekitar 100.000 per hari (gratis).

Biaya Scale (1 juta Node):
- Storage R2: sekitar 340 GB (perlu bayar).
- D1: Perlu sharding.
- Worker: Perlu Workers for Platforms.

### 14.3 Trigger Monetisasi

Kapan mulai berbayar?
- Setelah 10.000 Node aktif.
- Setelah ada traction (retention lebih dari 60 persen).
- Setelah ada tim yang cukup.

Target Revenue:
- Tahun 1: Rp 0 (fokus akuisisi).
- Tahun 2: Rp 100 juta (Tier 2+).
- Tahun 3: Rp 1 miliar (Tier 3+).
- Tahun 5: Rp 10 miliar (ekosistem).

---

## Bab 15: Referensi dan Lampiran

### 15.1 Website Live

| Website | URL |
|:---|:---|
| NADI Home | https://mynadi.pages.dev |
| NADI Builder | https://mynadi.pages.dev/builder |
| Hakem Media | https://hakem-media.pages.dev |
| Portofolio | https://hakem-project.pages.dev |
| Holland Bangka | https://holland-bangka.pages.dev |
| Pusat Wifi | https://pusat-wifi.pages.dev |

### 15.2 Backend

| Layanan | URL |
|:---|:---|
| Worker API | https://mynadi-api.hakemproject.workers.dev |
| Health Check | https://mynadi-api.hakemproject.workers.dev/api/health |

### 15.3 Repository dan Dashboard

- GitHub Repo: https://github.com/hakemproject/hakem-project
- GitHub Akun: https://github.com/hakemproject
- Cloudflare Dashboard: https://dash.cloudflare.com

### 15.4 Dokumentasi Internal

- Master Doc: docs/master/MASTER_DOC_v2.md
- Status: docs/PROJECT_STATUS.md
- Arsitektur: docs/ARCHITECTURE.md
- Titik Melanjutkan: docs/NEXT_SESSION.md
- Timeline: docs/storybook/03-journey.md
- Milestones: docs/storybook/05-milestones.md
- SEO: docs/seo/
- SQL Schema: docs/sql/

### 15.5 Referensi Eksternal

- Cloudflare Workers: https://developers.cloudflare.com/workers/
- Cloudflare D1: https://developers.cloudflare.com/d1/
- Cloudflare R2: https://developers.cloudflare.com/r2/
- Cloudflare Pages: https://developers.cloudflare.com/pages/
- Schema.org LocalBusiness: https://schema.org/LocalBusiness

### 15.6 Lampiran: Prinsip Proyek

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

---

## PENUTUP

Dokumen ini adalah buku induk ekosistem digital NADI.

Setiap keputusan, filosofi, strategi, dan rencana tercatat di sini. Ketika sesi baru dimulai, ketika AI baru bergabung, ketika tim baru bergabung - cukup baca dokumen ini.

Dokumen ini hidup. Akan terus di-update seiring perkembangan proyek.

Terakhir di-update: 15 Oktober 2026
Versi: 2.0 (Lengkap)
Status: Aktif
'@

# Append ke file yang sudah ada
Add-Content -Path "$root\docs\master\MASTER_DOC_v2.md" -Value $content -Encoding UTF8

Write-Host "[OK] MASTER_DOC_v2.md - Bagian 2 ditambahkan" -ForegroundColor Green
Write-Host ""
Get-Item "docs\master\MASTER_DOC_v2.md" | Select-Object Name, Length
Write-Host ""
Write-Host "=== SELESAI ===" -ForegroundColor Cyan