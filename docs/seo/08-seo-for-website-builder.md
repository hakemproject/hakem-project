# SEO untuk Website Builder - NADI

**Status:** Aktif (Standar Wajib)
**Tanggal:** 14 Oktober 2026

---

## 1. Tujuan

Dokumen ini adalah standar SEO yang harus diterapkan secara
otomatis oleh NADI Builder ke setiap website UMKM yang
dihasilkan. Ini adalah pembeda utama NADI dari website builder
lain: setiap Node sudah SEO-friendly sejak lahir.

---

## 2. Output SEO Otomatis

Saat user klik Publish, Builder harus otomatis menghasilkan:

### A. Metadata
- title: nama - kategori di kota
- meta description: deskripsi singkat
- canonical URL
- viewport meta
- html lang=id

Contoh:
title: Bakso Pak Joko - Bakso Sapi Rumahan di Surabaya
description: Bakso sapi rumahan dengan kuah kaldu asli sejak 2015. Pesan via WhatsApp.

### B. Open Graph
- og:title
- og:description
- og:image
- og:url
- og:type
- og:locale

### C. Twitter Card
- twitter:card
- twitter:title
- twitter:description
- twitter:image

### D. JSON-LD LocalBusiness
Builder harus otomatis generate JSON-LD berdasarkan kategori.
Lihat 05-structured-data.md untuk template.

### E. Sitemap XML
Setiap Node punya sitemap sendiri.

### F. Robots.txt
Setiap Node punya robots.txt sendiri.

---

## 3. SEO yang Tidak Bisa Dikontrol Builder

Builder tidak bisa menjamin:
- Peringkat di Google.
- Volume pencarian.
- Kompetisi dengan website lain.

Builder hanya bisa menjamin:
- Fondasi teknis SEO yang benar.
- Metadata lengkap.
- Performa cepat.
- Mobile-friendly.

---

## 4. Aturan Otomatis di Builder

### A. Slug Otomatis
- Input: Bakso Pak Joko
- Output: bakso-pak-joko
- Format: kebab-case, lowercase, tanpa simbol.

### B. Title Otomatis
- Format: Nama - Kategori di Kota
- Contoh: Bakso Pak Joko - Bakso di Surabaya

### C. Meta Description Otomatis
- Format: Deskripsi. Pesan via WhatsApp.
- Batas: 160 karakter.

### D. Alt Text Otomatis
- Foto owner: Foto pemilik Nama
- Foto usaha: Tempat usaha Nama
- Foto produk: Produk Nama

### E. Image Optimization
- Semua foto dikonversi ke WebP.
- Resize otomatis: owner 800px, usaha 1200px, produk 1200px.
- Quality: 80%.

---

## 5. Checklist SEO Builder (Otomatis)

Setiap Node yang dipublikasikan harus otomatis melewati:

- [x] Title unik
- [x] Meta description unik
- [x] Canonical URL
- [x] Open Graph
- [x] Twitter Card
- [x] JSON-LD LocalBusiness
- [x] Sitemap XML
- [x] Robots.txt
- [x] Gambar WebP
- [x] Alt text
- [x] Mobile-friendly
- [x] LCP maks 2,5s

Jika ada yang gagal, publish harus dibatalkan.

---

## 6. SEO untuk Halaman Builder Sendiri

Halaman Builder (mynadi.pages.dev/builder) juga harus SEO-friendly.

Tambahkan juga:
- Halaman /templates - contoh template per kategori.
- Halaman /harga - paket free dan premium.
- Halaman /faq - pertanyaan umum.

---

## 7. Prioritas Implementasi

1. MVP (sekarang): Metadata dasar + JSON-LD + WebP.
2. Fase 2: Sitemap dinamis, canonical otomatis, OG image dinamis.
3. Fase 3: Halaman kategori, internal linking otomatis antar Node.

---

## 8. Kesimpulan

SEO bukan fitur tambahan di NADI Builder. SEO adalah standar wajib.

Setiap UMKM yang menggunakan NADI Builder harus mendapatkan
website yang tidak hanya cantik dan cepat, tetapi juga siap
ditemukan Google sejak hari pertama.
