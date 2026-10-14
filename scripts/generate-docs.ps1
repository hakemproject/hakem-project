# ==============================================
# generate-docs.ps1
# Generate all documentation files for HakemProject
# ==============================================

$root = "C:\hakemproject"
Set-Location $root

Write-Host ""
Write-Host "=== Generating documentation files ===" -ForegroundColor Cyan
Write-Host ""

# ===== FILE 1: docs/NEXT_SESSION.md =====
$content = @'
# NEXT SESSION - Titik Melanjutkan

**Terakhir di-update:** 14 Oktober 2026

## Status Saat Ini

Fase 1 (Fondasi) SELESAI.
Fase 2 (Backend Dasar) BERJALAN.
Sedang jeda untuk istirahat dan persiapan beli domain.

## Yang Sudah Bekerja

- GitHub repo dengan 9+ commit
- 4 website live di Cloudflare Pages
- Worker API mynadi-api dengan CRUD
- Database D1 mynadi-db dengan 4 tabel
- Test POST dan GET berhasil

## Prioritas Sesi Berikutnya

### 1. Test PUT dan DELETE

curl.exe -X DELETE https://mynadi-api.hakemproject.workers.dev/api/nodes/bakso-pak-joko

### 2. Beli domain mynadi.my.id

Estimasi: Rp 9.900 sampai Rp 35.000 per tahun.

### 3. Setup custom domain Cloudflare

- mynadi.my.id untuk Pages
- api.mynadi.my.id untuk Worker
- images.mynadi.my.id untuk R2
- wildcard subdomain untuk Dispatch Worker

### 4. Setup R2 Bucket mynadi-images

### 5. Bind R2 ke Worker

### 6. Buat endpoint upload gambar

### 7. Integrasi Builder dengan API

## Konteks Teknis

Worker:
- Nama: mynadi-api
- Kode: workers/api/src/index.js
- Config: workers/api/wrangler.toml
- Binding: env.mynadi_db

D1 Database:
- Nama: mynadi-db
- ID: dea5de95-4601-477d-a4a5-95563b883279

Node Test:
- Slug: bakso-pak-joko
- ID: a9de2b0c-9fc9-48c3-abeb-fa91c22f8534

## Cara Memulai Sesi Baru

1. Baca docs/PROJECT_STATUS.md
2. Baca docs/ARCHITECTURE.md
3. Baca docs/storybook/03-journey.md
4. Baca docs/storybook/05-milestones.md
5. Cek git log --oneline -10

## Larangan

- JANGAN ubah struktur folder tanpa keputusan
- JANGAN hapus worker mynadi-api
- JANGAN ubah skema D1 tanpa migrasi
- JANGAN commit file test
- JANGAN push secret ke Git
'@
[System.IO.File]::WriteAllText("$root\docs\NEXT_SESSION.md", $content, [System.Text.UTF8Encoding]::new($false))
Write-Host "[OK] docs/NEXT_SESSION.md" -ForegroundColor Green

# ===== FILE 2: docs/storybook/03-journey.md =====
$content = @'
# PERJALANAN PROYEK - Timeline

**Terakhir di-update:** 14 Oktober 2026

## Fase 0: Ide dan Eksplorasi

- Ide NADI lahir dari pengalaman pribadi: mencari mekanik saat mogok di jalan.
- Filosofi terbentuk: Kebutuhan manusia dipenuhi manusia.
- Nama NADI dipilih (urat nadi kehidupan).
- MYNADI diciptakan sebagai solusi domain karena nadi.id mahal.

## Fase 1: Konsolidasi dan Audit (Oktober 2026)

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
  - mynadi.pages.dev LIVE (NADI Home)
  - mynadi.pages.dev/builder LIVE (Builder)
  - hakem-media.pages.dev LIVE (Hakem Media)
  - hakem-project.pages.dev LIVE (Portofolio)
- Worker API: mynadi-api LIVE di workers.dev
- Database D1: mynadi-db dengan 4 tabel
- CRUD API: POST dan GET berhasil
- Node test: bakso-pak-joko tersimpan di database
- Subdomain: pusatwifiindonesia berubah menjadi hakemproject

## Fase 2: Backend dan Domain (Sedang Berlangsung)

### Rencana
- Beli domain mynadi.my.id (15 Oktober 2026)
- Setup custom domain untuk Pages, Worker, R2
- Setup R2 Bucket mynadi-images
- Integrasi Builder dengan API
- Dispatch Worker untuk wildcard subdomain

## Fase 3: Scale dan AI (Masa Depan)

- 1000 NADI Node pertama
- NADI Hub (discovery)
- NADI AI (dispatcher)
- NADI Network (global)

## Refleksi

Proyek ini lahir dari visi sederhana:
- Setiap UMKM Indonesia berhak punya identitas digital.
- Setiap orang berhak menemukan bantuan dari manusia nyata.

Setiap commit, setiap baris kode, setiap keputusan - semua tercatat di sini.

**Think 19 million. Build for 1.**
'@
[System.IO.File]::WriteAllText("$root\docs\storybook\03-journey.md", $content, [System.Text.UTF8Encoding]::new($false))
Write-Host "[OK] docs/storybook/03-journey.md" -ForegroundColor Green

# ===== FILE 3: docs/storybook/05-milestones.md =====
$content = @'
# MILESTONES - Pencapaian Besar

**Terakhir di-update:** 14 Oktober 2026

## Milestone 1: Visi NADI Terbentuk

**Status:** SELESAI

Filosofi dan visi NADI dikunci: jaringan yang menghubungkan kebutuhan manusia dengan manusia yang mampu memenuhinya.

## Milestone 2: Struktur Monorepo Bersih

**Status:** SELESAI

- Repo tunggal hakem-project
- 3 produk (NADI, Builder, Hakem Media)
- 4 website live
- Dokumentasi lengkap

## Milestone 3: NADI Home LIVE

**URL:** mynadi.pages.dev
**Status:** SELESAI (14 Okt 2026)

Gerbang utama ekosistem NADI resmi online.

## Milestone 4: NADI Builder LIVE

**URL:** mynadi.pages.dev/builder
**Status:** SELESAI (14 Okt 2026)

Mesin pembuat website UMKM sudah bisa diakses.

## Milestone 5: Hakem Media LIVE

**URL:** hakem-media.pages.dev
**Status:** SELESAI (14 Okt 2026)

Studio kreatif premium online.

## Milestone 6: Portofolio Storybook LIVE

**URL:** hakem-project.pages.dev
**Status:** SELESAI (14 Okt 2026)

Portofolio HakemProject dengan timeline dan dokumentasi.

## Milestone 7: Worker API LIVE

**URL:** mynadi-api.hakemproject.workers.dev
**Status:** SELESAI (14 Okt 2026)

Backend API pertama NADI. Endpoint health check dan CRUD.

## Milestone 8: Database D1 Aktif

**Nama:** mynadi-db
**Status:** SELESAI (14 Okt 2026)

Database SQLite dengan 4 tabel:
- nodes (data UMKM)
- node_images (foto)
- node_socials (sosmed)
- domains (mapping)

## Milestone 9: Node Pertama Tersimpan

**Node:** bakso-pak-joko
**ID:** a9de2b0c-9fc9-48c3-abeb-fa91c22f8534
**Status:** SELESAI (14 Okt 2026)

Data UMKM pertama berhasil masuk database via API.

## Milestone Berikutnya (Rencana)

- Domain mynadi.my.id aktif
- R2 Bucket mynadi-images
- Upload gambar berfungsi
- Integrasi Builder dengan API
- Wildcard subdomain [slug].mynadi.my.id
- 100 NADI Node pertama
- 1000 NADI Node
- NADI Hub
- 19 juta NADI Node

## Pelajaran Berharga

1. Pelan tapi pasti lebih baik daripada cepat tapi rusak.
2. Setiap keputusan harus tercatat.
3. Prinsip: jangan hapus sebelum audit.
4. Keamanan (token, secret) tidak bisa dikompromikan.
5. Satu langkah, satu verifikasi.
'@
[System.IO.File]::WriteAllText("$root\docs\storybook\05-milestones.md", $content, [System.Text.UTF8Encoding]::new($false))
Write-Host "[OK] docs/storybook/05-milestones.md" -ForegroundColor Green

# ===== Verifikasi =====
Write-Host ""
Write-Host "=== Verifikasi file ===" -ForegroundColor Cyan
Get-ChildItem "$root\docs\NEXT_SESSION.md", "$root\docs\storybook\03-journey.md", "$root\docs\storybook\05-milestones.md" | Select-Object Name, Length

Write-Host ""
Write-Host "=== SELESAI ===" -ForegroundColor Cyan