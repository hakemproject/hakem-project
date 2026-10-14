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