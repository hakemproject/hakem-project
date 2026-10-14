# ARSITEKTUR SISTEM - NADI

**Terakhir di-update:** 14 Oktober 2026

## 1. Gambaran Besar

NADI menggunakan arsitektur multi-tenant single engine:
- 1 engine melayani 19 juta Node (website UMKM)
- Bukan 1 deployment per website

## 2. Komponen

### Frontend (Cloudflare Pages)
- NADI Home: mynadi.pages.dev
- NADI Builder: mynadi.pages.dev/builder
- Hakem Media: hakem-media.pages.dev
- Portofolio: hakem-project.pages.dev

### Backend (Cloudflare Workers)
- Worker: mynadi-api
- URL: mynadi-api.hakemproject.workers.dev
- Runtime: V8 Isolates (bukan Node.js)
- Fungsi: CRUD API, upload gambar, routing

### Database (Cloudflare D1)
- Nama: mynadi-db
- Engine: SQLite
- Tabel: nodes, node_images, node_socials, domains

### Storage (Cloudflare R2)
- Nama: mynadi-images (rencana)
- Fungsi: Simpan foto WebP UMKM
- Struktur: nodes/[node_id]/[slot].webp

## 3. Alur Publish Website UMKM

1. User isi form di Builder
2. Browser konversi foto ke WebP
3. Browser kirim data ke API
4. Worker validasi
5. Worker simpan foto ke R2
6. Worker simpan metadata ke D1
7. Worker return URL: [slug].mynadi.my.id
8. User bagikan URL
9. Pelanggan akses -> Dispatch Worker ambil data -> render

## 4. Prinsip Arsitektur

1. Single Source of Truth: Data di D1, kode di GitHub
2. Stateless Worker: Tidak simpan state
3. Domain Not Identity: node_id identitas sejati
4. Cache-First: Serve dari cache
5. Kebab-case URLs untuk SEO
6. Mobile-First
7. Lightweight: Target LCP kurang dari 2.5s

## 5. Limit Free Tier

- Worker: 100.000 request/hari
- D1: 5 juta row reads, 100.000 row writes/hari
- R2: 10 GB storage, 1 juta Class A ops/bulan