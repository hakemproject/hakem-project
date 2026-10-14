# ==============================================
# generate-v3-part2.ps1
# Master Doc v3 - Bagian 2 (Bab 6-10)
# ==============================================

$root = "C:\hakemproject"
Set-Location $root

Write-Host ""
Write-Host "=== Appending MASTER_DOC_v3.md - Part 2 ===" -ForegroundColor Cyan
Write-Host ""

$content = @'

---

## Bab 6: Arsitektur Teknis Lengkap

### 6.1 Gambaran Besar

NADI menggunakan arsitektur multi-tenant single engine.

**Prinsip:**
- 1 engine melayani 19 juta Node (website UMKM).
- Bukan 1 deployment per website.
- Bukan 19 juta repositori.
- Bukan 19 juta Pages project.

**Filosofi:**
Satu mesin, jutaan website.

**Analogi:**
Bayangkan perusahaan kurir. Mereka tidak membeli 1 mobil untuk 1 alamat. Mereka punya 1 kantor pusat yang mengelola semua pengiriman. NADI sama: 1 engine untuk 19 juta website.

### 6.2 Diagram Arsitektur Utama
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

### 6.3 Komponen Frontend (Cloudflare Pages)

**Website Statis:**
- NADI Home: mynadi.pages.dev
- NADI Builder: mynadi.pages.dev/builder
- Hakem Media: hakem-media.pages.dev
- Portofolio: hakem-project.pages.dev

**Teknologi:**
- HTML, CSS, JavaScript (vanilla)
- Tanpa framework berat (bukan React, Vue)
- Mobile-first
- Super ringan (target kurang dari 500 KB per halaman)
- Zero npm runtime

**Alasan Tanpa Framework:**
- Kecepatan loading (target kurang dari 0.5 detik)
- Bisa diakses dari HP kentang
- Tidak perlu build step
- Tidak perlu CI/CD kompleks

### 6.4 Komponen Backend (Cloudflare Workers)

**Worker API:**
- Nama: mynadi-api
- URL: mynadi-api.hakemproject.workers.dev
- Runtime: V8 Isolates (bukan Node.js)

**Fungsi:**
- CRUD API untuk data UMKM
- Upload gambar ke R2
- Routing subdomain
- Image processing
- Webhook handler

**Endpoints:**
- GET /api/health (health check)
- POST /api/nodes (buat Node)
- GET /api/nodes/:slug (ambil Node)
- PUT /api/nodes/:slug (update Node)
- DELETE /api/nodes/:slug (hapus Node)
- POST /api/images/upload (upload gambar, nanti)
- GET /api/images/:node_id/:slot (serve gambar, nanti)

**Pembagian Worker (Roadmap):**
- mynadi-api: API utama
- mynadi-router: Dispatch Worker (wildcard subdomain)
- mynadi-image: Image processing (nanti)
- mynadi-cron: Scheduled tasks (nanti)

### 6.5 Komponen Database (Cloudflare D1)

**Database:**
- Nama: mynadi-db
- Engine: SQLite
- Region: APAC

**Tabel Utama:**

Tabel `nodes` (data UMKM):
- id (TEXT, UUID, PRIMARY KEY)
- slug (TEXT, UNIQUE)
- business_name (TEXT)
- category (TEXT)
- whatsapp (TEXT)
- description (TEXT)
- address (TEXT)
- promo (TEXT)
- theme_id (TEXT)
- status (TEXT: draft/published/suspended)
- created_at (INTEGER)
- updated_at (INTEGER)

Tabel `node_images` (metadata foto):
- id (TEXT, UUID)
- node_id (TEXT, FOREIGN KEY)
- slot (TEXT: owner/business/product)
- object_key (TEXT, path di R2)
- width (INTEGER)
- height (INTEGER)
- size_bytes (INTEGER)
- mime_type (TEXT)
- created_at (INTEGER)

Tabel `node_socials` (sosial media):
- id (TEXT, UUID)
- node_id (TEXT, FOREIGN KEY)
- platform (TEXT: instagram/tiktok/facebook/youtube)
- url (TEXT)
- username (TEXT)
- is_visible (INTEGER)
- sort_order (INTEGER)
- created_at (INTEGER)

Tabel `domains` (mapping domain):
- id (TEXT, UUID)
- node_id (TEXT, FOREIGN KEY)
- hostname (TEXT, UNIQUE)
- type (TEXT: subdomain/custom)
- is_primary (INTEGER)
- created_at (INTEGER)

**Sharding (Nanti):**
Ketika data besar (jutaan Node), database bisa di-sharding:
- DB-000: site 00000000-00999999
- DB-001: site 01000000-01999999
- DB-002: site 02000000-02999999
- dst.

### 6.6 Komponen Storage (Cloudflare R2)

**Bucket:**
- Nama: mynadi-images (rencana)
- Fungsi: Simpan foto WebP UMKM

**Struktur:**
nodes/[node_id]/[slot].webp
Slot: owner, business, product

text

**Contoh:**
nodes/a9de2b0c-9fc9-48c3-abeb-fa91c22f8534/
├── owner.webp
├── business.webp
└── product.webp

text

**Target Ukuran:**
- Owner: kurang dari 100 KB
- Usaha: kurang dari 120 KB
- Produk: kurang dari 120 KB
- Total: sekitar 340 KB per Node

**Kenapa R2 bukan Git:**
- Git tidak dirancang untuk menyimpan jutaan file biner.
- Git akan sangat lambat dan besar.
- R2 dirancang untuk object storage skala besar.
- R2 memiliki egress gratis (tidak ada biaya bandwidth).

**Pipeline Konversi WebP:**
Original JPG/PNG → Validasi → Resize → Compress → WebP → R2.

**Rekomendasi: Konversi di Browser (Client-Side)**
- Worker tidak bisa jalankan `sharp` (Node.js library).
- Alternatif: pakai Canvas API di browser.
- Keuntungan: hemat biaya Worker, server hanya terima file WebP yang sudah siap.
- Kekurangan: butuh JavaScript di browser.

### 6.7 Alur Data: Publish Website UMKM

1. User isi form di Builder
2. Browser konversi foto ke WebP (Canvas API)
3. Browser kirim data dan foto ke api.mynadi.my.id
4. Worker validasi data (slug, WhatsApp, kategori)
5. Worker cek slug unik
6. Worker simpan foto ke R2
7. Worker simpan metadata ke D1
8. Worker return URL: [slug].mynadi.my.id
9. User bagikan URL ke pelanggan
10. Pelanggan akses, Dispatch Worker ambil data, render
11. Website UMKM tampil

**Validasi Server-Side:**
- Slug: hanya huruf, angka, tanda hubung
- WhatsApp: hanya angka, diawali 62 atau 0
- Kategori: harus dari daftar yang diizinkan
- Ukuran foto: maksimal 200 KB
- Format foto: hanya WebP

### 6.8 Alur Data: Akses Website UMKM

1. Pelanggan buka bakso-pak-joko.mynadi.my.id
2. DNS wildcard *.mynadi.my.id ke Dispatch Worker
3. Worker baca hostname: bakso-pak-joko
4. Worker query D1: SELECT * FROM nodes WHERE slug = bakso-pak-joko
5. Worker ambil foto dari R2 (atau URL publik)
6. Worker render HTML
7. Response ke browser
8. Cache di Cloudflare Edge (agar akses berikutnya cepat)

**Generate on Publish, Serve from Cache:**
- Jangan: Render setiap request dari database.
- Lakukan: Generate HTML sekali saat publish, serve dari cache.

**Keuntungan:**
- Request ke D1 jauh berkurang.
- Loading sangat cepat (dari edge).
- Hemat biaya.

### 6.9 Skalabilitas 19 Juta Node

**Strategi:**
1. Single engine, bukan 19 juta deployment
2. Cache-first, serve dari cache
3. Database sharding (nanti)
4. Wildcard DNS, *.mynadi.my.id ke 1 Worker
5. R2 unlimited objects

**Limit Free Tier (Saat Ini):**
- Worker: 100.000 request/hari
- D1: 5 juta row reads, 100.000 row writes/hari
- R2: 10 GB storage, 1 juta Class A ops/bulan

**Estimasi Kapasitas Free Tier:**
- 100.000 request/hari ≈ 10.000 website aktif (10 akses/website).
- 10 GB storage ≈ 33.000 Node (340 KB/Node).
- 5 juta row reads/hari ≈ 1 juta akses Node.

**Kapan Perlu Bayar:**
- Ketika sudah lebih dari 10.000 website aktif.
- Ketika storage R2 lebih dari 10 GB.
- Ketika traffic tinggi.

**Mitigasi Biaya:**
- Cache aggressive.
- Image optimization.
- Compression.
- Serve static assets dari edge.

### 6.10 Wildcard DNS dan Dispatch Worker

**Cara Kerja:**
1. DNS record: `*.mynadi.my.id` → Cloudflare Worker.
2. Semua subdomain (bakso-pak-joko, kopi-senja, dst) masuk ke 1 Worker.
3. Worker baca hostname → ekstrak slug → query D1 → render.

**Keterbatasan:**
- `pages.dev` TIDAK BISA di-wildcard (domain milik Cloudflare).
- Untuk sementara: pakai path-based (`mynadi.pages.dev/s/[slug]`).
- Setelah beli `mynadi.my.id`: wildcard subdomain aktif.

**Cloudflare Workers for Platforms:**
- Fitur premium Cloudflare.
- Untuk skala jutaan hostname.
- Akan dipertimbangkan setelah free tier tercapai.

---

## Bab 7: Tech Stack dan Tools

### 7.1 Frontend Stack

- Bahasa: HTML, CSS, JavaScript
- Framework: Tanpa framework (vanilla)
- Styling: CSS native + Tailwind (opsional, via CDN)
- Hosting: Cloudflare Pages
- Build: Tanpa build step (static HTML)

### 7.2 Backend Stack

- Runtime: Cloudflare Workers (V8 Isolates)
- Bahasa: JavaScript (ES modules)
- API: REST JSON
- Framework: Tanpa framework
- CLI: Wrangler

### 7.3 Database Stack

- Engine: Cloudflare D1 (SQLite)
- Region: APAC
- Query: SQL standar
- Migrasi: Manual via wrangler d1 execute

### 7.4 Storage Stack

- Engine: Cloudflare R2
- Format: WebP
- Struktur: nodes/[node_id]/[slot].webp
- Egress: Gratis

### 7.5 Domain dan DNS

- Registrar: DomaiNesia (atau lainnya)
- Domain: mynadi.my.id
- DNS: Cloudflare
- SSL: Otomatis via Cloudflare
- Nameserver: ns1.cloudflare.com, ns2.cloudflare.com

### 7.6 Developer Tools

- Editor: VS Code
- Version Control: Git
- Remote Repo: GitHub (hakemproject)
- CLI: Wrangler 4.x
- Runtime: Node.js 20+
- Package Manager: npm

### 7.7 AI Stack

**ChatGPT (Free/Plus):**
- Peran: Arsitek dan strategi
- Kegunaan: Keputusan besar, analisis, spesifikasi, review
- Kekuatan: Reasoning kuat, konteks panjang
- Kelemahan: Kuota terbatas (free), fitur premium (Plus)

**Google AI Studio / Gemini:**
- Peran: Laboratorium prototipe
- Kegunaan: Eksperimen AI, testing prompt, prototipe
- Kekuatan: Akses model Gemini terbaru, gratis
- Kelemahan: Berbeda dari ChatGPT, learning curve

**DeepSeek:**
- Peran: Asisten coding cadangan
- Kegunaan: Debugging, review kode, implementasi alternatif
- Kekuatan: Biaya murah, kualitas coding baik
- Kelemahan: Bahasa Indonesia kurang natural

**Gemini MCP (untuk dokumentasi):**
- Peran: Referensi dan dokumentasi
- Kegunaan: Cari referensi, dokumentasi proyek

**Prinsip AI:**
- AI adalah tenaga bantu yang bisa diganti
- Dokumentasi adalah sumber kebenaran
- Jangan bergantung pada satu AI
- Hemat kuota untuk tugas penting

### 7.8 Visual Identity NADI

**Palet Warna Utama:**
- Primary Background: #F6F7F4 (cream soft)
- Secondary BG: #FFFFFF (pure white)
- Text Primary: #1C2624 (dark green)
- Text Secondary: #68736E (muted)
- Accent Sage: #2C5A47 (green)
- Accent Pulse Red: #D95757
- Accent Pulse Blue: #568BBD
- Border: #E2E7E1

**Karakter Visual:**
- Soft, modern, AI-transparan
- Bukan dark, bukan neon
- Bukan startup 2020 (yang terlalu neon)
- Bukan korporat kaku (yang terlalu formal)

**Referensi Kelas Dunia:**
- Linear.app: Soft gradient, transparan, subtle
- Anthropic.com: Earthy tones, AI-transparan
- Vercel.com: Dark, minimal, glass-morphism
- Raycast.com: Soft gradient, AI-first
- Perplexity.ai: Clean, AI-transparan, subtle

**Tren 2025-2026: "Soft AI"**
- Background lembut (cream, off-white, sage)
- Gradient halus (merah-biru untuk NADI)
- Transparansi AI (tidak menyembunyikan)

**Logo NADI:**
- Dua grafik denyut nadi
- Merah = manusia
- Biru = teknologi/AI
- Membentuk tulisan NADI secara subtil
- Terinspirasi filosofi logo KIA terbaru (tidak langsung terbaca)
- Unsur "discovery": baru sadar setelah diperhatikan

**Favicon:** versi simplified dari logo.

### 7.9 Image Optimization Standards

**Format:** WebP (bukan JPG/PNG)
**Ukuran Target:**
- Hero image: maksimal 100 KB
- Product image: maksimal 120 KB
- Owner photo: maksimal 100 KB
**Total per Node:** sekitar 340 KB

**Teknik:**
- Resize otomatis: owner 800px, usaha 1200px, produk 1200px
- Quality: 80 persen
- Lazy loading untuk gambar di bawah fold
- Dimensi eksplisit (width & height) untuk mencegah CLS

**Yang Dilarang:**
- Autoplay video
- Carousel otomatis
- Library JS berat untuk efek visual
- Google Fonts (pakai system fonts)
- Memuat 10 foto sekaligus

---

## Bab 8: Roadmap Enam Fase

### 8.1 Overview Fase

| Fase | Nama | Status | Target |
|:---|:---|:---|:---|
| Fase 0 | Ide dan Eksplorasi | Selesai | Visi terbentuk |
| Fase 1 | Fondasi dan Struktur | Selesai | 4 website live |
| Fase 2 | Backend dan Domain | Berjalan | R2 + Domain |
| Fase 3 | Scale (Node pertama) | Nanti | 100-1000 UMKM |
| Fase 4 | NADI Hub | Nanti | Discovery + Search |
| Fase 5 | NADI AI (Dispatcher) | Nanti | AI matching |
| Fase 6 | NADI Network Global | Masa Depan | Asia + Global |

### 8.2 Fase 1 - Fondasi (SELESAI)

**Output:**
- Repo GitHub hakem-project
- Website NADI Home live
- Website NADI Builder live
- Website Hakem Media live
- Website Portofolio live
- Dokumentasi lengkap (SEO, storybook, arsitektur)
- Worker API dengan CRUD
- Database D1 dengan 4 tabel

**Pelajari:**
- Pentingnya struktur folder yang rapi
- Dokumentasi sebagai sumber kebenaran
- Git sebagai fondasi

### 8.3 Fase 2 - Backend dan Domain (BERJALAN)

**Yang Sudah:**
- Worker API mynadi-api live
- Database D1 aktif
- CRUD endpoints bekerja

**Yang Belum:**
- Beli domain mynadi.my.id
- Setup custom domain Cloudflare
- Setup R2 Bucket
- Upload handler
- Integrasi Builder ke API
- Wildcard DNS dan Dispatch Worker

**Target:** Domain aktif + Builder bisa publish website UMKM.

### 8.4 Fase 3 - Scale (NANTI)

**Target:** 100-1000 NADI Node pertama.

**Strategi:**
- Seeding door-to-door (10 UMKM)
- Case study dan konten viral (100 UMKM)
- Partnership komunitas (1000 UMKM)

**Metrik:**
- Website load time
- Biaya per website
- D1 reads/writes
- R2 storage
- Error rate

### 8.5 Fase 4 - NADI Hub

**Target:** Discovery dan Search.

**Fitur:**
- Direktori UMKM berdasarkan kategori
- Pencarian berdasarkan lokasi dan radius
- Filter availability dan capability
- Showcase UMKM terbaik
- Review dan rating

**Teknologi:**
- Spatial query di D1 (via koordinat)
- Geofencing (radius)
- Search indexing

### 8.6 Fase 5 - NADI AI

**Target:** AI Dispatcher.

**Fitur:**
- Understand user intent (natural language)
- Screening (radius, availability, capability)
- Match dengan manusia tepat
- WhatsApp handoff
- Handoff ke manusia (bukan AI menyelesaikan)

**Contoh:**
User: "Motor saya mogok."
NADI AI:
1. Intent detection: butuh mekanik
2. Location: user location atau input
3. Radius: 3 km
4. Capability: service motor
5. Availability: buka sekarang
6. Ranking: paling dekat + rating
7. Handoff: "Saya temukan Bengkel Maju, 1.8 km dari Anda. Hubungi WhatsApp?"

### 8.7 Fase 6 - NADI Network Global

**Target:** Asia dan Global.

**Strategi Domain:**
- Indonesia: mynadi.my.id, mynadi.id
- Asia: mynadi.asia, mynadi.com
- Global: nadi.com (jika bisa didapat)

**Brand tetap NADI. Domain beradaptasi.**

**Ekspansi:**
- Malaysia
- Singapura
- Filipina
- Asia Tenggara
- Global

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

### D-013: Master Doc Strategy
**Status:** ACCEPTED | **Tanggal:** 15 Oktober 2026

**Konteks:** Butuh dokumentasi lengkap proyek.
**Keputusan:** Buat Master Doc (Markdown) + Storybook (HTML) + PDF.
**Alasan:** Untuk AI, developer, dan bacaan pribadi.
**Konsekuensi:** Butuh maintenance rutin.

### D-014: Domain Naming
**Status:** ACCEPTED | **Tanggal:** 15 Oktober 2026

**Konteks:** Beberapa kandidat domain (nadiku.id, nadiq.id, mynadi.my.id).
**Keputusan:** Pakai mynadi.my.id sebagai utama.
**Alasan:** MY NADI lebih universal, siap global.
**Konsekuensi:** nadi.id sebagai goal akhir.

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
- Bersihkan file tidak terpakai (_arsip, test files).
- Update dokumentasi (PROJECT_STATUS, ARCHITECTURE, NEXT_SESSION).
- Master Doc v2 dibuat (30 KB).
- Master Doc v3 dibuat (100% lengkap).

### Sedang Berlangsung (Fase 2)

- Menunggu pembelian domain mynadi.my.id.
- Setup custom domain Cloudflare.
- Setup R2 Bucket.
- Integrasi Builder dengan API.

### Target Berikutnya

- Domain mynadi.my.id aktif.
- R2 Bucket mynadi-images.
- Upload gambar berfungsi.
- Integrasi Builder ke API.
- Wildcard subdomain [slug].mynadi.my.id.
- 100 NADI Node pertama.
- 1000 NADI Node.
- NADI Hub.
- 19 juta NADI Node.

---

*[Akhir Bagian 2 - Lanjut ke Bagian 3: Bab 11-18]*
'@

Add-Content -Path "$root\docs\master\MASTER_DOC_v3.md" -Value $content -Encoding UTF8

Write-Host "[OK] MASTER_DOC_v3.md - Bagian 2 ditambahkan" -ForegroundColor Green
Write-Host ""
Get-Item "docs\master\MASTER_DOC_v3.md" | Select-Object Name, Length