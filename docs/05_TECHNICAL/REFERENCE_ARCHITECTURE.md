# Reference Architecture (Technology-Neutral)

```text
Client / Browser
      |
      v
Presentation layer (pages, components, accessibility)
      |
      v
Application layer (use cases, validation, permissions)
      |
      +------> Data layer (database / content storage)
      |
      +------> Media storage
      |
      +------> External services (email, analytics, payment if needed)
      |
      v
Observability: logs, error reporting, metrics
```

## Aturan
- Jangan menganggap diagram ini sebagai stack yang sudah dipilih.
- Keamanan dan otorisasi harus ditegakkan di sisi server.
- Hindari menyimpan rahasia di repositori atau frontend.
- Pisahkan data pengguna dan validasi akses pada setiap operasi.
- Tetapkan backup, pemulihan, ekspor data, dan prosedur insiden.
- Untuk situs statis, evaluasi kebutuhan formulir, CMS, dan pembaruan konten sebelum menambahkan backend.
