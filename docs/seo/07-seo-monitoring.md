# SEO Monitoring - NADI

**Status:** Aktif
**Tanggal:** 14 Oktober 2026

---

## 1. Tool Monitoring

| Tool | Fungsi | Frekuensi |
|:---|:---|:---|
| Google Search Console | Indexing, query, klik, CTR | Mingguan |
| Google Analytics 4 | Traffic, behavior, konversi | Mingguan |
| PageSpeed Insights | Core Web Vitals | Bulanan |
| Rich Results Test | Structured data | Setiap deploy |
| Ubersuggest / Ahrefs | Backlink, keyword rank | Bulanan |

---

## 2. KPI Utama

| KPI | Target Fase 1 | Target Fase 2 |
|:---|:---|:---|
| Halaman terindeks | 10 | 1.000 |
| Organic traffic/bulan | 100 | 10.000 |
| CTR rata-rata | 3% | 5% |
| Posisi keyword utama | 20 | 5 |
| Backlink domain | 5 | 50 |

---

## 3. Setup Google Search Console

1. Buka search.google.com/search-console.
2. Tambahkan properti:
   - mynadi.pages.dev (URL prefix)
   - hakem-media.pages.dev
3. Verifikasi via DNS (Cloudflare) atau HTML tag.
4. Submit sitemap: sitemap.xml.

Untuk NADI Node (subdomain dinamis), gunakan Domain Property:
- mynadi.my.id (mencakup semua subdomain).

---

## 4. Laporan Mingguan

Setiap minggu, catat:

| Tanggal | Terindeks | Klik | Impresi | CTR | Posisi |
|:---|:---|:---|:---|:---|:---|
| 2026-10-14 | (isi) | (isi) | (isi) | (isi) | (isi) |

Analisa:
- Query apa yang naik?
- Halaman apa yang turun?
- Ada error indexing?

---

## 5. Penanganan Masalah Umum

### Halaman Tidak Terindeks
1. Cek robots.txt - apakah diblokir?
2. Cek noindex meta tag.
3. Cek canonical URL.
4. Request indexing manual di GSC.

### Traffic Turun
1. Cek update algoritma Google.
2. Cek kompetitor.
3. Cek Core Web Vitals.
4. Cek konten duplikat.

### CTR Rendah
1. Optimasi title tag.
2. Optimasi meta description.
3. Cek posisi.

---

## 6. Alert & Notifikasi

Aktifkan notifikasi email di GSC untuk:
- Error indexing
- Manual action (penalti)
- Masalah keamanan
- Core Web Vitals gagal

---

## 7. Review Bulanan

Setiap akhir bulan:
1. Export data GSC.
2. Analisa tren.
3. Identifikasi halaman top 10 dan bottom 10.
4. Update strategi untuk bulan berikutnya.
