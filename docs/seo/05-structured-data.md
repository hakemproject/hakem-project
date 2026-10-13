# Structured Data (JSON-LD) - NADI

**Status:** Aktif
**Tanggal:** 14 Oktober 2026

---

## 1. Mengapa Structured Data Penting?

Structured data membantu Google memahami konten halaman dan
menampilkannya sebagai rich results (dengan rating, harga,
jam buka, dll). Ini meningkatkan CTR dan visibilitas.

Format yang kita pakai: JSON-LD (rekomendasi Google).

---

## 2. LocalBusiness - untuk NADI Node

Setiap NADI Node wajib menyertakan schema LocalBusiness.

Contoh JSON-LD:

{
  context: https://schema.org,
  type: LocalBusiness,
  name: Bakso Pak Joko,
  image: https://bakso-pak-joko.mynadi.my.id/images/product.webp,
  description: Bakso sapi rumahan dengan kuah kaldu asli sejak 2015.,
  address: {
    type: PostalAddress,
    streetAddress: Jl. Ahmad Yani No. 10,
    addressLocality: Surabaya,
    addressRegion: Jawa Timur,
    postalCode: 60234,
    addressCountry: ID
  },
  geo: {
    type: GeoCoordinates,
    latitude: -7.2575,
    longitude: 112.7521
  },
  url: https://bakso-pak-joko.mynadi.my.id,
  telephone: +6281234567890,
  priceRange: \$\$,
  sameAs: [
    https://instagram.com/baksopakjoko,
    https://tiktok.com/@baksopakjoko
  ]
}

### Subtipe LocalBusiness yang Relevan

| Kategori | @type |
|:---|:---|
| Kuliner | Restaurant |
| Kopi | CafeOrCoffeeShop |
| Bengkel | AutoRepair |
| Salon | BeautySalon |
| Laundry | DryCleaningOrLaundry |
| Toko | Store |
| Kesehatan | MedicalBusiness |
| Pendidikan | EducationalOrganization |

---

## 3. Organization - untuk NADI Home

Contoh JSON-LD:

{
  context: https://schema.org,
  type: Organization,
  name: NADI,
  url: https://mynadi.pages.dev,
  logo: https://mynadi.pages.dev/logo.svg,
  description: Jaringan yang menghubungkan kebutuhan manusia dengan manusia yang mampu memenuhinya.,
  founder: {
    type: Person,
    name: Lukmanul Hakim
  },
  sameAs: [
    https://github.com/hakemproject
  ]
}

---

## 4. WebSite - untuk NADI Builder

Contoh JSON-LD:

{
  context: https://schema.org,
  type: WebSite,
  name: NADI Builder,
  url: https://mynadi.pages.dev/builder
}

---

## 5. Validasi

Wajib validasi di:
- Rich Results Test: https://search.google.com/test/rich-results
- Schema Markup Validator: https://validator.schema.org/

---

## 6. Aturan

1. Selalu sertakan JSON-LD di setiap halaman.
2. Jangan mengisi data palsu.
3. Update JSON-LD jika data UMKM berubah.
4. Jangan duplikasi schema yang sama.
