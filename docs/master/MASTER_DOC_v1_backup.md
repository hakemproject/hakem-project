# ðŸ“– MASTER DOC â€” HakemProject

**Buku Induk Ekosistem Digital NADI**

## Metadata

| Field | Nilai |
|:---|:---|
| Judul | Master Doc â€” HakemProject |
| Versi | 1.0 |
| Tanggal | 15 Oktober 2026 |
| Pemilik | Lukmanul Hakim (HakemProject) |
| Status | Aktif â€” Living Document |
| Lokasi | docs/master/MASTER_DOC.md |

Catatan: Dokumen ini adalah sumber kebenaran proyek. Setiap keputusan penting harus tercatat di sini. Dokumen ini hidup, akan terus di-update seiring perkembangan proyek.

---

## 01. Filosofi dan Visi NADI

### 1.1 Arti Nama NADI

NADI (bahasa Indonesia) berarti urat nadi â€” pembuluh darah yang mengalirkan kehidupan ke seluruh tubuh.

NADI (bahasa Arab) berarti tempat berkumpul â€” titik pertemuan.

NADI (akronim global) â€” Network of Autonomous and Direct Intent.

Filosofi: Seperti urat nadi mengalirkan darah ke seluruh tubuh, NADI mengalirkan kebutuhan, kemampuan, dan solusi ke seluruh jaringan manusia.

### 1.2 Prinsip Utama

Kebutuhan manusia, dipenuhi manusia.

AI bukan pengganti manusia. AI adalah perantara yang membantu manusia menemukan manusia lain yang mampu memenuhi kebutuhannya.

Contoh:
- Motor mogok, NADI menemukan mekanik terdekat, WhatsApp, Selesai.
- Butuh bakso, NADI menemukan warung bakso terdekat, WhatsApp, Selesai.
- Butuh kerja, NADI menemukan UMKM yang butuh tenaga, WhatsApp, Interview.

### 1.3 Tiga Pilar Marketing

NADI dipasarkan dengan 3 prinsip:

| Pilar | Manifestasi |
|:---|:---|
| GRATIS | Tier 1 sepenuhnya gratis untuk UMKM. Tanpa biaya tersembunyi. |
| MUDAH | Isi form, Preview, Publish. 3 langkah. Tanpa coding. |
| KEREN | URL sendiri, desain modern, terhubung sosmed, mobile-first. |

Kenapa MUDAH bukan MUDA?
- MUDA eksklusif anak muda.
- MUDAH universal, semua orang bisa.
- Target: 19 juta UMKM Indonesia, dari anak SMK sampai nenek.

### 1.4 FOMO Apa Web Kamu

NADI ingin menciptakan status symbol baru di Indonesia:

- 2010-an: Apa nomor HP kamu?
- 2015-an: Apa BBM WA kamu?
- 2020-an: Apa IG TikTok kamu?
- 2026-an (NADI): Apa web kamu?

Mengapa ini bekerja:
- Website adalah kepemilikan, bukan sewa platform.
- Website adalah identitas (nama, kategori, deskripsi).
- Website adalah terhubung (semua sosmed dalam 1 URL).
- Website bisa di-cari (Google nemu).
- Website milik selamanya (tidak hilang kalau akun dibanned).

### 1.5 NADI sebagai Yellow Pages Modern

Yellow Pages Lama (1990-2000an):
- Buku telepon fisik.
- Berbayar untuk listing.
- Statis, tidak bisa di-update.

Yellow Pages Modern (Google, Yelp):
- Digital, tapi kompleks.
- Berbayar untuk SEO.
- Sulit untuk UMKM kecil.

NADI (Kategori Baru):
- Digital.
- Gratis untuk UMKM.
- Mudah (isi form, jadi).
- Terhubung (WhatsApp, Maps, sosmed).
- Punya URL sendiri (bukan cuma link).
- Keren (modern, cepat, mobile-first).

Kesimpulan: NADI bukan sekadar yellow pages. NADI adalah rumah digital UMKM Indonesia.

---

## 02. Produk (3 Website Terintegrasi)

HakemProject mengelola 3 website yang berbeda tapi terintegrasi:

### 2.1 NADI - Platform dan Builder Gratis

URL: mynadi.pages.dev, target mynadi.my.id, goal akhir nadi.id

Peran: Digitalisasi massal UMKM Indonesia.

Struktur:
- NADI Home: mynadi.pages.dev (gerbang utama)
- NADI Builder: mynadi.pages.dev/builder (mesin pembuat website gratis)
- NADI Node: [slug].mynadi.my.id (website UMKM)

Target Audiens: UMKM kecil menengah (gratis).

Fitur Utama:
- Landing page otomatis
- 3 foto wajib (owner, usaha, produk)
- Tema otomatis per kategori
- WhatsApp CTA
- Maps integrasi
- Sosmed hub (IG, FB, TikTok, YouTube)
- SEO otomatis

### 2.2 Hakem Media - Studio Kreatif Premium

URL: hakem-media.pages.dev

Peran: Layanan website custom untuk kreator, influencer, dan bisnis.

Struktur:
- Landing Page: hakem-media.pages.dev
- Builder Premium: hakem-media.pages.dev/builder (belum dibuat)

Target Audiens: Kreator, influencer, bisnis (berbayar).

Fitur Utama:
- Website custom
- Personal branding
- Portfolio
- E-commerce
- Konsultasi branding

Hubungan dengan NADI:
- NADI: pintu masuk gratis untuk UMKM.
- Hakem Media: upgrade path untuk kebutuhan premium.
- Bukan kompetitor, tapi lanjutan.

### 2.3 HakemProject - Portofolio dan Storybook

URL: hakem-project.pages.dev

Peran: Wajah induk usaha HakemProject.

Struktur:
- Portofolio: hakem-project.pages.dev
- Storybook: hakem-project.pages.dev/storybook (nanti)

Target Audiens: Investor, klien besar, media, talent.

Fitur Utama:
- Portofolio proyek
- Timeline perjalanan
- Dokumentasi (Storybook)
- Kontak

### 2.4 Hubungan Antar Website
HAKEMPROJECT
(Induk)
|
+------------------+------------------+
| | |
v v v
NADI HAKEM MEDIA PORTOFOLIO
(gratis) (premium) (storybook)
| |
v v
UMKM kecil Kreator/Bisnis
(gratis) (berbayar)

text

Alur Upgrade UMKM:
1. UMKM daftar gratis di NADI Builder.
2. Punya website [slug].mynadi.my.id.
3. Butuh lebih (multi-page, custom design)?
4. Upgrade ke Hakem Media (berbayar).

---

## 03. Arsitektur Teknis

### 3.1 Gambaran Besar

NADI menggunakan arsitektur multi-tenant single engine:
- 1 engine melayani 19 juta Node (website UMKM).
- Bukan 1 deployment per website.
- Bukan 19 juta repositori.
- Bukan 19 juta Pages project.

Prinsip: Satu mesin, jutaan website.

### 3.2 Diagram Arsitektur
INTERNET
|
+---------------+---------------+
| | |
v v v
mynadi.my.id api.mynadi... *.mynadi.my.id
(Pages) (Worker API) (Worker Router)
| | |
| v v
| Cloudflare D1 Cloudflare R2
| (Database) (Images)
| | |
+---------------+---------------+
|
v
NADI Node
Website UMKM

text

### 3.3 Komponen Utama

Frontend (Cloudflare Pages):
- NADI Home: mynadi.pages.dev
- NADI Builder: mynadi.pages.dev/builder
- Hakem Media: hakem-media.pages.dev
- Portofolio: hakem-project.pages.dev
- Teknologi: HTML, CSS, JavaScript (statis, tanpa framework)

Backend (Cloudflare Workers):
- Worker: mynadi-api
- URL: mynadi-api.hakemproject.workers.dev
- Runtime: V8 Isolates (bukan Node.js)
- Fungsi: CRUD API, upload gambar, routing

Database (Cloudflare D1):
- Nama: mynadi-db
- Engine: SQLite
- Region: APAC
- Tabel: nodes, node_images, node_socials, domains

Storage (Cloudflare R2):
- Nama: mynadi-images (rencana)
- Fungsi: Simpan foto WebP UMKM
- Struktur: nodes/[node_id]/[slot].webp
- Target ukuran: sekitar 340 KB per Node (3 foto)

CDN dan Cache (Cloudflare):
- Wildcard: *.mynadi.my.id ke Dispatch Worker
- API: api.mynadi.my.id ke Worker mynadi-api
- Images: images.mynadi.my.id ke R2 Bucket
- Home: mynadi.my.id ke Pages

### 3.4 Alur Data Publish Website UMKM

1. User isi form di Builder.
2. Browser konversi foto ke WebP (Canvas API).
3. Browser kirim data dan foto ke api.mynadi.my.id.
4. Worker validasi data.
5. Worker simpan foto ke R2.
6. Worker simpan metadata ke D1.
7. Worker return URL: [slug].mynadi.my.id.
8. User bagikan URL ke pelanggan.
9. Pelanggan akses, Dispatch Worker ambil data, render.
10. Website UMKM tampil.

### 3.5 Alur Data Akses Website UMKM

1. Pelanggan buka bakso-pak-joko.mynadi.my.id.
2. DNS wildcard *.mynadi.my.id ke Dispatch Worker.
3. Worker baca hostname: bakso-pak-joko.
4. Worker query D1: SELECT * FROM nodes WHERE slug = bakso-pak-joko.
5. Worker ambil foto dari R2.
6. Worker render HTML.
7. Response ke browser.
8. Cache di Cloudflare Edge.

### 3.6 Skalabilitas 19 Juta Node

Strategi:
1. Single engine, bukan 19 juta deployment.
2. Cache-first, serve dari cache, generate hanya saat update.
3. Database sharding, nanti saat data besar.
4. Wildcard DNS, *.mynadi.my.id ke 1 Worker.
5. R2 unlimited objects, foto UMKM tanpa batas.

Limit Free Tier:
- Worker: 100.000 request per hari.
- D1: 5 juta row reads, 100.000 row writes per hari.
- R2: 10 GB storage, 1 juta Class A ops per bulan.

---

## 04. Roadmap dan Fase

### 4.1 Fase Perjalanan

| Fase | Nama | Status | Target |
|:---|:---|:---|:---|
| Fase 0 | Ide dan Eksplorasi | Selesai | Visi terbentuk |
| Fase 1 | Fondasi dan Struktur | Selesai | 4 website live |
| Fase 2 | Backend dan Domain | Berjalan | R2 dan Domain |
| Fase 3 | Scale (Node pertama) | Nanti | 100-1000 UMKM |
| Fase 4 | NADI Hub | Nanti | Discovery dan Search |
| Fase 5 | NADI AI (Dispatcher) | Nanti | AI matching |
| Fase 6 | NADI Network Global | Masa Depan | Asia dan Global |

### 4.2 Fase 1 - Fondasi (SELESAI)

Target: Struktur proyek, dokumentasi, website live.

Output:
- Repo GitHub hakem-project.
- Website NADI Home live.
- Website NADI Builder live.
- Website Hakem Media live.
- Website Portofolio live.
- Dokumentasi lengkap (SEO, storybook, arsitektur).
- Worker API dengan CRUD.
- Database D1 dengan 4 tabel.

### 4.3 Fase 2 - Backend dan Domain (BERJALAN)

Target: Domain, R2, integrasi Builder-API.

Yang Sudah:
- Worker API mynadi-api live.
- Database D1 aktif.
- CRUD endpoints bekerja.

Yang Belum:
- Beli domain mynadi.my.id.
- Setup custom domain Cloudflare.
- Setup R2 Bucket.
- Upload handler.
- Integrasi Builder ke API.
- Wildcard DNS dan Dispatch Worker.

### 4.4 Fase 3 - Scale (NANTI)

Target: 100-1000 NADI Node pertama.

Strategi:
- Seeding door-to-door (10 UMKM).
- Case study dan konten viral (100 UMKM).
- Partnership komunitas (1000 UMKM).

### 4.5 Fase 4 - NADI Hub (NANTI)

Target: Discovery dan Search.

Fitur:
- Direktori UMKM berdasarkan kategori.
- Pencarian berdasarkan lokasi dan radius.
- Filter availability dan capability.

### 4.6 Fase 5 - NADI AI (NANTI)

Target: AI Dispatcher.

Fitur:
- Understand user intent (natural language).
- Screening (radius, availability, capability).
- Match dengan manusia tepat.
- WhatsApp handoff.

Prinsip: AI bukan pengganti manusia. AI adalah perantara.

### 4.7 Fase 6 - NADI Network Global (MASA DEPAN)

Target: Asia dan Global.

Strategi Domain:
- Indonesia: mynadi.my.id, mynadi.id
- Asia: mynadi.asia, mynadi.com
- Global: nadi.com (jika bisa didapat)

Brand tetap NADI. Domain beradaptasi.

---

## 05. Decision Log

Catatan semua keputusan penting proyek.

### D-001: Monorepo Strategy

Status: ACCEPTED
Tanggal: 12 Oktober 2026

Konteks: Punya beberapa proyek terkait.
Keputusan: Pakai monorepo tunggal hakem-project.
Alasan: Mudah sinkronisasi, satu sumber kebenaran.
Konsekuensi: Semua commit mempengaruhi semua website.

### D-002: Naming MYNADI

Status: ACCEPTED
Tanggal: 14 Oktober 2026

Konteks: Domain nadi.id mahal atau tidak tersedia.
Keputusan: Pakai mynadi.my.id dulu. nadi.id sebagai goal akhir.
Alasan: MY NADI bisa dibaca lintas bahasa (My NADI).
Konsekuensi: Brand NADI tetap, domain beradaptasi.

### D-003: Subdomain Strategy

Status: ACCEPTED
Tanggal: 14 Oktober 2026

Konteks: NADI targetkan 19 juta UMKM.
Keputusan: Pakai wildcard subdomain *.mynadi.my.id.
Alasan: Satu Worker melayani jutaan subdomain.
Konsekuensi: Butuh custom domain dan Dispatch Worker.

### D-004: NADI dan Builder 1 Website

Status: ACCEPTED
Tanggal: 14 Oktober 2026

Konteks: Apakah Builder website terpisah?
Keputusan: Builder jadi subfolder nadi: mynadi.pages.dev/builder.
Alasan: Brand terpadu, SEO kuat.
Konsekuensi: Struktur folder projects/nadi/builder.

### D-005: Worker API

Status: ACCEPTED
Tanggal: 14 Oktober 2026

Konteks: Butuh backend untuk data UMKM.
Keputusan: Pakai Cloudflare Workers dengan nama mynadi-api.
Alasan: Serverless, cepat, terintegrasi dengan D1 dan R2.
Konsekuensi: Runtime V8 Isolates (bukan Node.js).

### D-006: Database D1

Status: ACCEPTED
Tanggal: 14 Oktober 2026

Konteks: Butuh database untuk data UMKM.
Keputusan: Pakai Cloudflare D1 (SQLite) dengan nama mynadi-db.
Alasan: Terintegrasi dengan Workers, murah, cepat.
Konsekuensi: Tabel nodes, node_images, node_socials, domains.

### D-007: 3 Foto Wajib

Status: ACCEPTED
Tanggal: 14 Oktober 2026

Konteks: Apakah perlu banyak foto?
Keputusan: Hanya 3 foto: owner, usaha, produk.
Alasan: Fokus, ringan, cukup untuk trust.
Konsekuensi: Total sekitar 340 KB per Node.

### D-008: WhatsApp First

Status: ACCEPTED
Tanggal: 14 Oktober 2026

Konteks: Apa conversion engine utama?
Keputusan: WhatsApp sebagai CTA utama.
Alasan: Universal di Indonesia, tanpa app tambahan.
Konsekuensi: CTA WhatsApp sticky di setiap Node.

### D-009: Kebab-case URLs

Status: ACCEPTED
Tanggal: 14 Oktober 2026

Konteks: Format URL untuk SEO.
Keputusan: Pakai kebab-case (bakso-pak-joko).
Alasan: Google lebih suka, mudah dibaca.
Konsekuensi: Slug auto-generate dalam kebab-case.

### D-010: Free Tier First

Status: ACCEPTED
Tanggal: 14 Oktober 2026

Konteks: Monetisasi NADI.
Keputusan: Tier 1 gratis. Monetisasi di Tier 2+.
Alasan: Akuisisi massal, network effect.
Konsekuensi: Butuh model bisnis untuk keberlanjutan.

---

## 06. Timeline Perjalanan

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
- Cloudflare Pages live:
  - mynadi.pages.dev (NADI Home).
  - mynadi.pages.dev/builder (Builder).
  - hakem-media.pages.dev (Hakem Media).
  - hakem-project.pages.dev (Portofolio).
- Worker API: mynadi-api live.
- Database D1: mynadi-db dengan 4 tabel.
- CRUD API: POST dan GET berhasil.
- Node test: bakso-pak-joko.
- Subdomain: pusatwifiindonesia berubah menjadi hakemproject.

### 15 Oktober 2026

- Test PUT dan DELETE endpoint.
- CRUD API lengkap (POST, GET, PUT, DELETE).
- Bersihkan file tidak terpakai (_arsip, test files).
- Update dokumentasi (PROJECT_STATUS, ARCHITECTURE, NEXT_SESSION).
- Master Doc (dokumen ini) dibuat.

### Sedang Berlangsung (Fase 2)

- Menunggu pembelian domain mynadi.my.id.
- Setup custom domain Cloudflare.
- Setup R2 Bucket.
- Integrasi Builder dengan API.

---

## 07. Strategi Marketing

### 7.1 Tiga Pilar

GRATIS, MUDAH, KEREN.

Pilar 1: GRATIS
- Tier 1 sepenuhnya gratis.
- Tanpa biaya tersembunyi.
- Target: 19 juta UMKM Indonesia.

Pilar 2: MUDAH
- 3 langkah: isi form, preview, publish.
- Tanpa coding.
- Tanpa design skill.
- Target: semua orang, dari anak SMK sampai nenek.

Pilar 3: KEREN
- URL sendiri: [slug].mynadi.my.id.
- Desain modern, mobile-first.
- Terhubung sosmed, WhatsApp, Maps.
- Target: membuat orang bangga punya website.

### 7.2 FOMO Apa Web Kamu

Menciptakan status symbol baru di Indonesia.

Timeline:
- 2010-an: Apa nomor HP kamu?
- 2015-an: Apa BBM WA kamu?
- 2020-an: Apa IG TikTok kamu?
- 2026-an: Apa web kamu?

Kampanye:
- Hashtag: #ApaWebKamu
- Konten: "Sebelum vs sesudah punya website".
- Testimonial: UMKM yang berhasil.
- Tantangan: "Tunjukkan web kamu".

### 7.3 Yellow Pages Modern

Positioning:
- Bukan sekadar direktori.
- Rumah digital UMKM.
- Identitas digital.
- Konversi ke WhatsApp.

Pitch untuk UMKM:
"NADI adalah rumah digital untuk usahamu. Gratis, mudah, keren. Cukup isi form 1 menit, kamu punya website sendiri."

Pitch untuk Investor:
"NADI adalah Yellow Pages modern yang mendigitalisasi 19 juta UMKM Indonesia. Bukan sekadar website builder, ini infrastruktur identitas digital."

Pitch untuk Kreator:
"NADI adalah rumah digitalmu. Semua sosmed, portofolio, dan kontak dalam 1 URL. Gratis."

### 7.4 Roadmap Marketing

Fase 1 (Bulan 1-3): Seeding
- 10-100 UMKM pertama.
- Door-to-door.
- Konten sebelum/sesudah.
- Case study.

Fase 2 (Bulan 3-6): Viral
- 1000 UMKM dari word-of-mouth.
- Konten TikTok, Instagram Reels.
- Kolaborasi KOL.
- Hashtag #ApaWebKamu.

Fase 3 (Bulan 6-12): Scale
- 10.000 UMKM.
- Partnership komunitas.
- Program afiliasi.
- Event offline.

Fase 4 (Tahun 2+): Ecosystem
- 1 juta+ UMKM.
- NADI Hub.
- NADI Network.
- NADI AI.

---

## 08. Tech Stack dan Tools

### 8.1 Frontend

- Bahasa: HTML, CSS, JavaScript.
- Framework: Tanpa framework (vanilla).
- Styling: CSS native + Tailwind (opsional).
- Hosting: Cloudflare Pages.

### 8.2 Backend

- Runtime: Cloudflare Workers (V8 Isolates).
- Bahasa: JavaScript (ES modules).
- API: REST JSON.
- Framework: Tanpa framework.

### 8.3 Database

- Engine: Cloudflare D1 (SQLite).
- Region: APAC.
- Tabel: nodes, node_images, node_socials, domains.

### 8.4 Storage

- Engine: Cloudflare R2.
- Fungsi: Foto WebP UMKM.
- Struktur: nodes/[node_id]/[slot].webp.

### 8.5 Domain dan DNS

- Registrar: DomaiNesia (atau lainnya).
- Domain: mynadi.my.id.
- DNS: Cloudflare.
- SSL: Otomatis via Cloudflare.

### 8.6 Developer Tools

- Editor: VS Code.
- Version Control: Git.
- Remote Repo: GitHub.
- CLI: Wrangler.
- Runtime: Node.js.

### 8.7 AI Stack

- ChatGPT: Arsitek dan strategi.
- Google AI Studio: Eksperimen dan prototipe.
- DeepSeek: Coding alternatif dan debugging.
- Gemini (MCP): Dokumentasi dan referensi.

Prinsip AI:
- AI adalah tenaga bantu yang bisa diganti.
- Dokumentasi adalah sumber kebenaran.
- Jangan bergantung pada satu AI.

### 8.8 Visual Identity

Palet Warna NADI:
- Primary Background: #F6F7F4 (cream soft)
- Secondary BG: #FFFFFF (pure white)
- Text Primary: #1C2624 (dark green)
- Text Secondary: #68736E (muted)
- Accent Sage: #2C5A47 (green)
- Accent Pulse Red: #D95757
- Accent Pulse Blue: #568BBD
- Border: #E2E7E1

Karakter Visual:
- Soft, modern, AI-transparan.
- Bukan dark, bukan neon.
- Referensi: Linear, Anthropic, Vercel, Raycast.

---

## 09. Sistem Anti-Amnesia

### 9.1 Prinsip

Dokumentasi adalah sumber kebenaran, bukan percakapan AI.

Setiap keputusan penting harus tercatat di dokumen, bukan hanya di chat.

### 9.2 Lapisan Dokumentasi

| Lapisan | File | Fungsi |
|:---|:---|:---|
| 1. Identitas | MASTER_DOC.md, PROJECT_PHILOSOPHY.md | Visi, filosofi, nilai |
| 2. Teknis | ARCHITECTURE.md, STACK_DECISIONS.md | Arsitektur, keputusan teknis |
| 3. Operasional | PROJECT_STATUS.md, NEXT_SESSION.md | Status, titik melanjutkan |

### 9.3 Session Handoff Protocol

Setiap sesi kerja berakhir dengan:
1. Commit dan push.
2. Update PROJECT_STATUS.md.
3. Update NEXT_SESSION.md.
4. Catat keputusan baru di DECISION_LOG.md.

### 9.4 Cara Memulai Sesi Baru

1. Baca docs/PROJECT_STATUS.md.
2. Baca docs/NEXT_SESSION.md.
3. Baca docs/ARCHITECTURE.md.
4. Baca docs/master/MASTER_DOC.md (dokumen ini).
5. Cek git log --oneline -10.

### 9.5 Larangan

- JANGAN ubah struktur folder tanpa keputusan.
- JANGAN hapus worker mynadi-api.
- JANGAN ubah skema D1 tanpa migrasi.
- JANGAN commit file test.
- JANGAN push secret ke Git.

---

## 10. Referensi dan Link Penting

### 10.1 Website Live

| Website | URL |
|:---|:---|
| NADI Home | https://mynadi.pages.dev |
| NADI Builder | https://mynadi.pages.dev/builder |
| Hakem Media | https://hakem-media.pages.dev |
| Portofolio | https://hakem-project.pages.dev |
| Holland Bangka | https://holland-bangka.pages.dev |
| Pusat Wifi | https://pusat-wifi.pages.dev |

### 10.2 Backend

| Layanan | URL |
|:---|:---|
| Worker API | https://mynadi-api.hakemproject.workers.dev |
| Health Check | https://mynadi-api.hakemproject.workers.dev/api/health |

### 10.3 Repository dan Dashboard

- GitHub Repo: https://github.com/hakemproject/hakem-project
- GitHub Akun: https://github.com/hakemproject
- Cloudflare Dashboard: https://dash.cloudflare.com

### 10.4 Dokumentasi Internal

- Master Doc: docs/master/MASTER_DOC.md (dokumen ini).
- Status: docs/PROJECT_STATUS.md.
- Arsitektur: docs/ARCHITECTURE.md.
- Titik Melanjutkan: docs/NEXT_SESSION.md.
- Timeline: docs/storybook/03-journey.md.
- Milestones: docs/storybook/05-milestones.md.
- SEO: docs/seo/.
- SQL Schema: docs/sql/.

### 10.5 Referensi Eksternal

- Cloudflare Workers: https://developers.cloudflare.com/workers/
- Cloudflare D1: https://developers.cloudflare.com/d1/
- Cloudflare R2: https://developers.cloudflare.com/r2/
- Cloudflare Pages: https://developers.cloudflare.com/pages/
- Schema.org LocalBusiness: https://schema.org/LocalBusiness

---

## Lampiran: Prinsip-Prinsip Proyek

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

Dokumen ini hidup. Akan terus di-update seiring perkembangan proyek.

Terakhir di-update: 15 Oktober 2026.