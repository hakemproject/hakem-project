# Technical SEO - NADI

**Status:** Aktif
**Tanggal:** 14 Oktober 2026

---

## 1. Crawling & Indexing

### Robots.txt

NADI Home (mynadi.pages.dev/robots.txt):
User-agent: *
Allow: /
Disallow: /admin/
Disallow: /api/

Sitemap: https://mynadi.pages.dev/sitemap.xml

NADI Builder:
User-agent: *
Allow: /
Disallow: /draft/
Disallow: /preview/

Sitemap: https://mynadi.pages.dev/sitemap.xml

NADI Node:
User-agent: *
Allow: /
Disallow: /*.json
Disallow: /edit/

Sitemap: https://slug.mynadi.my.id/sitemap.xml

### Sitemap XML

Contoh sitemap dasar:

<?xml version=1.0 encoding=UTF-8?>
<urlset xmlns=http://www.sitemaps.org/schemas/sitemap/0.9>
  <url>
    <loc>https://mynadi.pages.dev/</loc>
    <lastmod>2026-10-14</lastmod>
    <changefreq>weekly</changefreq>
    <priority>1.0</priority>
  </url>
</urlset>

Untuk NADI Node, sitemap digenerate dinamis oleh Worker.

---

## 2. Canonical URL

Setiap halaman harus punya link rel=canonical.

Masalah: NADI Node bisa diakses dari beberapa URL:
- mynadi.pages.dev/bakso-pak-joko
- bakso-pak-joko.mynadi.my.id
- bakso-pak-joko.mynadi.id

Solusi: Canonical selalu mengarah ke URL utama saat ini.

Contoh:
link rel=canonical href=https://bakso-pak-joko.mynadi.my.id/

---

## 3. HTTPS

Cloudflare otomatis menyediakan HTTPS. Wajib:
- Redirect HTTP ke HTTPS (otomatis).
- HSTS (opsional, aktifkan di Cloudflare).

---

## 4. Redirect 301

Jika URL berubah (karena upgrade domain), pakai redirect 301.

Contoh:
mynadi.pages.dev/bakso-pak-joko
    ke 301
bakso-pak-joko.mynadi.my.id

---

## 5. Cloudflare Setup

### DNS
- Wildcard *.mynadi.my.id ke Workers Route.
- Root mynadi.my.id ke NADI Home.

### Caching
- HTML: cache 1 jam.
- CSS/JS: cache 1 tahun (hash di nama file).
- Images (R2): cache 1 tahun.

### Compression
- Brotli aktif (otomatis).
- Gzip fallback.

### Performance
- Auto Minify: aktif.
- Rocket Loader: NONAKTIF.
- Early Hints: aktif.

---

## 6. Core Web Vitals

### LCP maks 2,5s
- Preload hero image.
- fetchpriority=high untuk hero.
- Hindari render-blocking CSS/JS.

### INP maks 200ms
- JavaScript minimal.
- Hindari long tasks.
- Event delegation.

### CLS maks 0,1
- Set width dan height di semua gambar.
- Font-display: swap.

---

## 7. Monitoring

- Google Search Console
- PageSpeed Insights
- Rich Results Test
- Mobile-Friendly Test

---

## 8. Checklist Deployment

- [ ] Robots.txt benar
- [ ] Sitemap XML valid
- [ ] Canonical URL benar
- [ ] HTTPS aktif
- [ ] Redirect 301 jika perlu
- [ ] Tidak ada link mati
- [ ] Core Web Vitals lulus
- [ ] Structured data valid
