# ==============================================
# generate-v2-part1.ps1
# Master Doc v2 - Bagian 1 (Bab 1-8)
# ==============================================

$root = "C:\hakemproject"
Set-Location $root

Write-Host ""
Write-Host "=== Generating MASTER_DOC_v2.md - Part 1 ===" -ForegroundColor Cyan
Write-Host ""

$content = @'
# MASTER DOC v2 - HakemProject

**Buku Induk Ekosistem Digital NADI - Versi Lengkap 100%**

## Metadata

| Field | Nilai |
|:---|:---|
| Judul | Master Doc v2 - HakemProject |
| Versi | 2.0 (Lengkap) |
| Tanggal | 15 Oktober 2026 |
| Pemilik | Lukmanul Hakim (HakemProject) |
| Status | Aktif - Living Document |

Dokumen ini adalah sumber kebenaran proyek yang lengkap. Menggabungkan seluruh diskusi, keputusan, filosofi, dan strategi dari awal proyek hingga saat ini.

---

## Daftar Isi

- Bab 1: Filosofi dan Arti Nama NADI
- Bab 2: Prinsip dan Nilai Proyek
- Bab 3: Tiga Pilar Marketing
- Bab 4: Visi Jangka Panjang NADI
- Bab 5: Tiga Produk Utama
- Bab 6: Arsitektur Teknis Lengkap
- Bab 7: Tech Stack dan Tools
- Bab 8: Roadmap Enam Fase
- Bab 9: Decision Log Lengkap
- Bab 10: Timeline Perjalanan
- Bab 11: Strategi Marketing Mendalam
- Bab 12: Sistem Anti-Amnesia
- Bab 13: Peran AI dalam Proyek
- Bab 14: Model Bisnis dan Monetisasi
- Bab 15: Referensi dan Lampiran

---

## Bab 1: Filosofi dan Arti Nama NADI

### 1.1 Etimologi Nama NADI

Nama NADI dipilih karena memiliki makna yang dalam dan universal.

**Nusantara dan Sanskerta (Nadi):**
- Berarti pembuluh, saluran energi, denyut kehidupan.
- Dalam filosofi Timur, nadi adalah saluran yang mengalirkan energi kehidupan.

**Bahasa Arab (Nadi):**
- Berarti tempat berkumpul dan bertemunya titik-titik kebutuhan warga.

**Global Tech Acronym:**
- Network of Autonomous and Direct Intent.

**Kesimpulan Filosofis:**
Seperti urat nadi mengalirkan darah ke seluruh tubuh, NADI mengalirkan kebutuhan, kemampuan, dan solusi ke seluruh jaringan manusia.

### 1.2 Filosofi Dua Mata Pisau

NADI memiliki dua fungsi utama yang saling melengkapi:

**Untuk Konsumen:**
- Akses instan menemukan produk/jasa terdekat.
- 100% online dan aktif.
- Langsung WhatsApp tanpa potongan komisi pihak ketiga.
- Tanpa perlu install aplikasi tambahan.

**Untuk UMKM dan Pekerja Harian:**
- Ruang transaksi tanpa potongan komisi aplikasi yang mencekik.
- Lapangan usaha mandiri dengan sinyal otonom.
- Langsung ke konsumen terdekat.
- Data dan identitas milik mereka sendiri.

### 1.3 Prinsip Fundamental

Seluruh proyek NADI dibangun di atas satu prinsip fundamental.

**Kebutuhan manusia, dipenuhi manusia.**

Ini bukan sekadar slogan. Ini adalah filter untuk setiap keputusan:

**AI bukan pengganti manusia.**
- AI tidak menjadi chatbot yang seolah-olah menyelesaikan segalanya.
- AI tidak berpura-pura menjadi manusia.

**AI adalah perantara.**
- AI membantu memahami kebutuhan.
- AI membantu menyaring (screening).
- AI membantu menemukan manusia yang tepat.
- AI tidak mengambil alih peran manusia.

**Contoh Penerapan:**
- Motor mogok, NADI menemukan mekanik terdekat, WhatsApp, Selesai.
- Butuh bakso, NADI menemukan warung bakso terdekat, WhatsApp, Selesai.
- Butuh kerja, NADI menemukan UMKM yang butuh tenaga, WhatsApp, Interview.

**Nilai Pembeda:**
Chatbot biasa: Manusia bertanya, AI menjawab, Selesai.
NADI: Manusia bertanya, AI menyaring, NADI Network menemukan manusia, WhatsApp, Solusi nyata.

---

## Bab 2: Prinsip dan Nilai Proyek

### 2.1 Sepuluh Nilai Inti

1. Pelan tapi pasti dan presisi
2. Satu langkah, satu verifikasi
3. Fungsional dulu, cantik kemudian
4. Jangan hapus sebelum audit
5. Keamanan tidak bisa dikompromikan
6. Dokumentasi adalah sumber kebenaran
7. AI adalah tenaga bantu yang bisa diganti
8. Think 19 million, Build for 1
9. Setiap keputusan harus tercatat
10. Jangan jatuh cinta pada visi sampai data membuktikannya

### 2.2 Prinsip Anti-Amnesia

**Masalah:** AI (ChatGPT, Gemini, DeepSeek) mudah lupa konteks. Setiap sesi baru, harus jelaskan ulang.

**Solusi:** Dokumentasi sebagai sumber kebenaran, bukan percakapan AI.

Setiap keputusan penting harus tercatat di dokumen. AI tidak perlu mengingat, cukup baca dokumen.

### 2.3 Prinsip Transparansi AI

NADI mengambil posisi berlawanan dengan tren chatbot yang menyembunyikan identitas AI.

**Aturan:**
- AI mengaku sebagai AI: "Saya AI NADI. Saya membantu menemukan orang yang tepat."
- Manusia dikenalkan sebagai manusia: "Bengkel Maju - Ini manusia/bisnis nyata."
- Tidak boleh AI berpura-pura menjadi manusia.

**Contoh yang SALAH:**
"Halo, saya Budi dari Bengkel Maju." - padahal itu AI.

**Contoh yang BENAR:**
"Saya AI NADI. Saya menemukan Bengkel Maju, 1.8 km dari Anda. Hubungi via WhatsApp?"

---

## Bab 3: Tiga Pilar Marketing

### 3.1 Pilar 1: GRATIS

**Manifestasi:**
- Tier 1 sepenuhnya gratis untuk UMKM.
- Tanpa biaya tersembunyi.
- Tidak ada paywall untuk fitur dasar.
- Landing page gratis, hosting gratis, subdomain gratis.

**Target:**
19 juta UMKM Indonesia, dari anak SMK sampai nenek.

**Alasan:**
- Menghilangkan hambatan masuk.
- Menciptakan network effect.
- UMKM merasa tidak terbebani.

### 3.2 Pilar 2: MUDAH

**Manifestasi:**
- 3 langkah: isi form, preview, publish.
- Tanpa coding.
- Tanpa design skill.
- Waktu pembuatan kurang dari 1 menit.

**Kenapa MUDAH bukan MUDA:**
- MUDA eksklusif anak muda.
- MUDAH universal, semua orang bisa.
- Target: 19 juta UMKM, dari usia berapa pun.

**Contoh UX:**
1. Isi nama usaha
2. Pilih kategori
3. Isi WhatsApp
4. Isi deskripsi
5. Upload 3 foto (owner, usaha, produk)
6. Klik Publish
7. Dapat URL: bakso-pak-joko.mynadi.my.id

### 3.3 Pilar 3: KEREN

**Manifestasi:**
- URL sendiri: [slug].mynadi.my.id
- Desain modern, mobile-first.
- Terhubung sosmed, WhatsApp, Maps.
- SEO otomatis.
- Ringan diakses dari HP.

**Target:**
Membuat orang bangga punya website.

**FOMO:**
"Apa Web Kamu?" menjadi status symbol baru.

### 3.4 Fenomena FOMO "Apa Web Kamu?"

**Timeline Status Symbol di Indonesia:**
- 2010-an: Apa nomor HP kamu?
- 2015-an: Apa BBM/WA kamu?
- 2020-an: Apa IG/TikTok kamu?
- 2026-an (NADI): Apa web kamu?

**Mengapa ini bekerja:**
- Website adalah kepemilikan, bukan sewa platform.
- Website adalah identitas (nama, kategori, deskripsi).
- Website terhubung (semua sosmed dalam 1 URL).
- Website bisa di-cari (Google nemu).
- Website milik selamanya (tidak hilang kalau akun dibanned).

**Kampanye:**
- Hashtag: #ApaWebKamu
- Konten: Sebelum vs sesudah punya website.
- Testimonial: UMKM yang berhasil.
- Tantangan: Tunjukkan web kamu.

---

## Bab 4: Visi Jangka Panjang NADI

### 4.1 NADI sebagai Yellow Pages Modern

**Yellow Pages Lama (1990-2000an):**
- Buku telepon fisik.
- Berbayar untuk listing.
- Statis, tidak bisa di-update.
- Distribusi terbatas.

**Yellow Pages Modern (Google, Yelp):**
- Digital, tapi kompleks.
- Berbayar untuk SEO.
- Sulit untuk UMKM kecil.
- Dominasi algoritma.

**NADI (Kategori Baru):**
- Digital.
- Gratis untuk UMKM.
- Mudah (isi form, jadi).
- Terhubung (WhatsApp, Maps, sosmed).
- Punya URL sendiri (bukan cuma link).
- Keren (modern, cepat, mobile-first).

**Kesimpulan:**
NADI bukan sekadar yellow pages. NADI adalah rumah digital UMKM Indonesia.

### 4.2 Tiga Jaringan NADI

**Jaringan 1: Commerce (UMKM ke Pembeli)**
- Saya mau beli bakso.
- NADI: Bakso Pak Joko, WhatsApp, Pembeli.

**Jaringan 2: Employment (UMKM ke Pekerja)**
- Bengkel butuh mekanik.
- NADI: Bengkel A mencari mekanik radius 5 km, Calon pekerja, WhatsApp, Interview.

**Jaringan 3: Human Service (Manusia ke Manusia)**
- Motor mogok.
- NADI: Saya butuh mekanik motor, NADI AI cari node, radius, tersedia sekarang, mekanik, WhatsApp, Selesai.

### 4.3 Ekonomi Siklus NADI

Pencari kerja mendapat pekerjaan, mendapat penghasilan, belanja, UMKM lain mendapat pembeli, UMKM tumbuh, membutuhkan pekerja lagi.

Ini adalah flywheel NADI yang menciptakan pertumbuhan ekonomi berkelanjutan.

---

## Bab 5: Tiga Produk Utama

### 5.1 NADI - Platform dan Builder Gratis

**URL:** mynadi.pages.dev, target mynadi.my.id, goal akhir nadi.id

**Peran:** Digitalisasi massal UMKM Indonesia.

**Struktur:**
- NADI Home: mynadi.pages.dev (gerbang utama)
- NADI Builder: mynadi.pages.dev/builder (mesin pembuat website gratis)
- NADI Node: [slug].mynadi.my.id (website UMKM)

**Target Audiens:** UMKM kecil menengah (gratis).

**Fitur Utama:**
- Landing page otomatis
- 3 foto wajib (owner, usaha, produk)
- Tema otomatis per kategori
- WhatsApp CTA
- Maps integrasi
- Sosmed hub
- SEO otomatis
- QR Code
- Share button

### 5.2 Hakem Media - Studio Kreatif Premium

**URL:** hakem-media.pages.dev

**Peran:** Layanan website custom untuk kreator, influencer, dan bisnis.

**Struktur:**
- Landing Page: hakem-media.pages.dev
- Builder Premium: hakem-media.pages.dev/builder (belum dibuat)

**Target Audiens:** Kreator, influencer, bisnis (berbayar).

**Fitur Utama:**
- Website custom
- Personal branding
- Portfolio
- E-commerce
- Konsultasi branding
- Media kit untuk kreator
- Halaman afiliasi

**Hubungan dengan NADI:**
- NADI adalah pintu masuk gratis untuk UMKM.
- Hakem Media adalah upgrade path untuk kebutuhan premium.
- Bukan kompetitor, tapi lanjutan.

### 5.3 HakemProject - Portofolio dan Storybook

**URL:** hakem-project.pages.dev

**Peran:** Wajah induk usaha HakemProject.

**Struktur:**
- Portofolio: hakem-project.pages.dev
- Storybook: hakem-project.pages.dev/storybook (nanti)

**Target Audiens:** Investor, klien besar, media, talent.

**Fitur Utama:**
- Portofolio proyek
- Timeline perjalanan
- Dokumentasi (Storybook)
- Kontak

### 5.4 Hubungan Antar Produk
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

**Alur Upgrade UMKM:**
1. UMKM daftar gratis di NADI Builder.
2. Punya website [slug].mynadi.my.id.
3. Butuh lebih (multi-page, custom design)?
4. Upgrade ke Hakem Media (berbayar).

### 5.5 Roadmap Tier Produk

**Tier 1 - UMKM Starter (Gratis):**
- Landing page
- 3 foto
- WhatsApp CTA
- Maps
- Sosmed
- SEO dasar
- Subdomain mynadi.my.id

**Tier 2 - Business Website (Upgrade):**
- Multi-page
- Katalog produk
- Galeri foto
- Formulir pemesanan
- Testimonial
- Custom domain

**Tier 3 - Online Store (Advanced):**
- Keranjang belanja
- Checkout
- Manajemen produk
- Manajemen pesanan
- Payment gateway

**Tier 4 - Business Platform (Enterprise):**
- Multi-user
- Inventory
- CRM
- POS
- Laporan keuangan
- API integrasi

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
- Tanpa framework berat
- Mobile-first
- Super ringan

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

**Endpoints:**
- GET /api/health - Health check
- POST /api/nodes - Buat Node
- GET /api/nodes/:slug - Ambil Node
- PUT /api/nodes/:slug - Update Node
- DELETE /api/nodes/:slug - Hapus Node

### 6.5 Komponen Database (Cloudflare D1)

**Database:**
- Nama: mynadi-db
- Engine: SQLite
- Region: APAC

**Tabel:**
- nodes: data UMKM (id, slug, business_name, category, whatsapp, description, address, promo, theme_id, status)
- node_images: metadata foto (id, node_id, slot, object_key, size_bytes)
- node_socials: sosial media (id, node_id, platform, url)
- domains: mapping domain (id, node_id, hostname)

### 6.6 Komponen Storage (Cloudflare R2)

**Bucket:**
- Nama: mynadi-images (rencana)
- Fungsi: Simpan foto WebP UMKM

**Struktur:**
nodes/[node_id]/[slot].webp
Slot: owner, business, product

**Target Ukuran:**
- Owner: kurang dari 100 KB
- Usaha: kurang dari 120 KB
- Produk: kurang dari 120 KB
- Total: sekitar 340 KB per Node

### 6.7 Alur Data: Publish Website UMKM

1. User isi form di Builder
2. Browser konversi foto ke WebP (Canvas API)
3. Browser kirim data dan foto ke api.mynadi.my.id
4. Worker validasi data
5. Worker simpan foto ke R2
6. Worker simpan metadata ke D1
7. Worker return URL: [slug].mynadi.my.id
8. User bagikan URL ke pelanggan
9. Pelanggan akses, Dispatch Worker ambil data, render
10. Website UMKM tampil

### 6.8 Alur Data: Akses Website UMKM

1. Pelanggan buka bakso-pak-joko.mynadi.my.id
2. DNS wildcard *.mynadi.my.id ke Dispatch Worker
3. Worker baca hostname: bakso-pak-joko
4. Worker query D1: SELECT * FROM nodes WHERE slug = bakso-pak-joko
5. Worker ambil foto dari R2
6. Worker render HTML
7. Response ke browser
8. Cache di Cloudflare Edge

### 6.9 Skalabilitas 19 Juta Node

**Strategi:**
1. Single engine, bukan 19 juta deployment
2. Cache-first, serve dari cache
3. Database sharding (nanti)
4. Wildcard DNS, *.mynadi.my.id ke 1 Worker
5. R2 unlimited objects

**Limit Free Tier:**
- Worker: 100.000 request/hari
- D1: 5 juta row reads, 100.000 row writes/hari
- R2: 10 GB storage, 1 juta Class A ops/bulan

---

## Bab 7: Tech Stack dan Tools

### 7.1 Frontend Stack

- Bahasa: HTML, CSS, JavaScript
- Framework: Tanpa framework (vanilla)
- Styling: CSS native + Tailwind (opsional)
- Hosting: Cloudflare Pages

### 7.2 Backend Stack

- Runtime: Cloudflare Workers (V8 Isolates)
- Bahasa: JavaScript (ES modules)
- API: REST JSON
- Framework: Tanpa framework

### 7.3 Database Stack

- Engine: Cloudflare D1 (SQLite)
- Region: APAC
- Tabel: nodes, node_images, node_socials, domains

### 7.4 Storage Stack

- Engine: Cloudflare R2
- Fungsi: Foto WebP UMKM
- Struktur: nodes/[node_id]/[slot].webp

### 7.5 Domain dan DNS

- Registrar: DomaiNesia (atau lainnya)
- Domain: mynadi.my.id
- DNS: Cloudflare
- SSL: Otomatis via Cloudflare

### 7.6 Developer Tools

- Editor: VS Code
- Version Control: Git
- Remote Repo: GitHub
- CLI: Wrangler
- Runtime: Node.js

### 7.7 AI Stack

- ChatGPT: Arsitek dan strategi
- Google AI Studio: Eksperimen dan prototipe
- DeepSeek: Coding alternatif dan debugging
- Gemini (MCP): Dokumentasi dan referensi

**Prinsip AI:**
- AI adalah tenaga bantu yang bisa diganti
- Dokumentasi adalah sumber kebenaran
- Jangan bergantung pada satu AI

### 7.8 Visual Identity NADI

**Palet Warna:**
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
- Referensi: Linear, Anthropic, Vercel, Raycast

**Logo:**
- Dua grafik denyut nadi (merah = manusia, biru = teknologi)
- Membentuk tulisan NADI secara subtil
- Terinspirasi filosofi logo KIA terbaru

---

## Bab 8: Roadmap Enam Fase

### 8.1 Fase Perjalanan

| Fase | Nama | Status |
|:---|:---|:---|
| Fase 0 | Ide dan Eksplorasi | Selesai |
| Fase 1 | Fondasi dan Struktur | Selesai |
| Fase 2 | Backend dan Domain | Berjalan |
| Fase 3 | Scale (Node pertama) | Nanti |
| Fase 4 | NADI Hub | Nanti |
| Fase 5 | NADI AI (Dispatcher) | Nanti |
| Fase 6 | NADI Network Global | Masa Depan |

### 8.2 Fase 1 - Fondasi (SELESAI)

**Output:**
- Repo GitHub hakem-project
- Website NADI Home live
- Website NADI Builder live
- Website Hakem Media live
- Website Portofolio live
- Dokumentasi lengkap
- Worker API dengan CRUD
- Database D1 dengan 4 tabel

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

### 8.4 Fase 3 - Scale

**Target:** 100-1000 NADI Node pertama.

**Strategi:**
- Seeding door-to-door (10 UMKM)
- Case study dan konten viral (100 UMKM)
- Partnership komunitas (1000 UMKM)

### 8.5 Fase 4 - NADI Hub

**Target:** Discovery dan Search.

**Fitur:**
- Direktori UMKM berdasarkan kategori
- Pencarian berdasarkan lokasi dan radius
- Filter availability dan capability

### 8.6 Fase 5 - NADI AI

**Target:** AI Dispatcher.

**Fitur:**
- Understand user intent
- Screening
- Match dengan manusia
- WhatsApp handoff

### 8.7 Fase 6 - NADI Network Global

**Target:** Asia dan Global.

**Strategi Domain:**
- Indonesia: mynadi.my.id, mynadi.id
- Asia: mynadi.asia, mynadi.com
- Global: nadi.com (jika bisa didapat)

Brand tetap NADI. Domain beradaptasi.

---

*[Akhir Bagian 1 - Lanjut ke Bagian 2]*
'@

[System.IO.File]::WriteAllText("$root\docs\master\MASTER_DOC_v2.md", $content, [System.Text.UTF8Encoding]::new($false))

Write-Host "[OK] MASTER_DOC_v2.md - Bagian 1 selesai" -ForegroundColor Green
Get-Item "docs\master\MASTER_DOC_v2.md" | Select-Object Name, Length


