# AI WORKING INSTRUCTIONS - HakemProject

**Dokumen ini berisi instruksi preferensi kerja user (Lukmanul Hakim) untuk semua AI yang membantu proyek HakemProject.**

Setiap AI (ChatGPT, Gemini, DeepSeek, atau lainnya) **WAJIB** membaca dokumen ini sebelum memberikan instruksi atau kode.

**Terakhir di-update:** 15 Oktober 2026

---

## 1. Prinsip Utama: SELALU KIRIM CMD LENGKAP

Setiap instruksi harus dalam bentuk script PowerShell (.ps1) yang siap di-copy-paste ke Terminal/CMD. Bukan potongan manual.

### 1.1 Format Standar yang WAJIB Dipakai

Setiap kali memberikan kode, gunakan format ini:

    cd C:\hakemproject
    $root = "C:\hakemproject"
    
    New-Item -ItemType Directory -Force -Path "$root\path\to\folder" | Out-Null
    
    $content1 = @'
    [isi file lengkap]
    '@
    [System.IO.File]::WriteAllText("$root\path\file1.ext", $content1, [System.Text.UTF8Encoding]::new($false))
    Write-Host "[OK] file1.ext" -ForegroundColor Green
    
    Get-ChildItem "$root\path\to\folder" -Recurse | Select-Object FullName, Length

### 1.2 Aturan Wajib dalam Setiap Script

Setiap script yang dikirim HARUS memiliki:

1. Header komentar
2. cd C:\hakemproject di awal
3. $root = "C:\hakemproject" - selalu definisikan variabel root
4. New-Item -ItemType Directory -Force untuk folder baru
5. [System.IO.File]::WriteAllText dengan UTF8Encoding($false) (tanpa BOM)
6. Write-Host "[OK] ..." -ForegroundColor Green untuk laporan progress
7. Get-ChildItem atau Get-Item untuk verifikasi di akhir
8. Isi file yang LENGKAP - tidak ada TODO atau placeholder

### 1.3 Yang HARUS DIHINDARI

- JANGAN kirim potongan kode terpisah yang harus digabung manual
- JANGAN instruksi buka VS Code, cari baris X, ganti jadi Y
- JANGAN copy-paste multi-file terpisah
- JANGAN langkah manual yang berulang
- JANGAN pakai here-string panjang tanpa definisi $root
- JANGAN kirim kode tanpa verifikasi di akhir

### 1.4 Pengecualian (yang boleh manual)

Hanya dalam kondisi ini user boleh diminta melakukan hal manual:

- Edit konfigurasi Cloudflare via browser
- Aktivasi extension VS Code
- Interaksi browser/web (klik, login, screenshot)
- Scan QR code (WhatsApp Web, GitHub Login)
- Klik tombol di dashboard Cloudflare/GitHub

Untuk semua lainnya - SELALU kirim script .ps1.

---

## 2. Cara Kerja dengan User

### 2.1 Alur Standar Setiap Sesi

1. User minta fitur/file baru
2. AI kirim script .ps1 lengkap - siap copy-paste
3. User jalankan di Terminal VS Code
4. User kirim output ke AI
5. AI verifikasi dan lanjut ke langkah berikutnya

### 2.2 Prinsip Satu Langkah, Satu Verifikasi

- Kerjakan satu hal per balasan
- Verifikasi sebelum lanjut
- Jangan borongan banyak file sekaligus (kecuali user minta)

### 2.3 Bahasa dan Nada

- Bahasa: Indonesia (campuran istilah teknis English)
- Nada: Ramah, jelas, seperti guru-murid
- Panjang: Detail tapi tidak bertele-tele
- Format: Pakai emoji untuk navigasi visual

### 2.4 Saat User Error

- Jangan panik. Error adalah bagian dari proses.
- Analisa penyebab dengan tenang
- Kirim fix dalam bentuk script .ps1 juga
- Selalu tanya output sebelum lanjut

---

## 3. Konteks Proyek

### 3.1 Identitas

- Nama brand: NADI (Network of Autonomous and Direct Intent)
- Alamat digital: mynadi.pages.dev, target mynadi.my.id, goal nadi.id
- Induk usaha: HakemProject (Lukmanul Hakim)
- Repo GitHub: hakemproject/hakem-project
- Akun Cloudflare: Hakem Project
- Email: hakem.lukmanul@gmail.com

### 3.2 Produk (3 Website Terintegrasi)

- NADI Home: mynadi.pages.dev (Platform + Builder gratis)
- NADI Builder: mynadi.pages.dev/builder (Mesin website UMKM gratis)
- Hakem Media: hakem-media.pages.dev (Studio premium)
- Hakem Media Builder: hakem-media.pages.dev/builder (Builder premium)
- Portofolio: hakem-project.pages.dev (Wajah induk)
- Book: hakem-project.pages.dev/book (Buku induk interaktif)

### 3.3 Backend

- Worker: mynadi-api (mynadi-api.hakemproject.workers.dev)
- Database: mynadi-db (D1, 4 tabel: nodes, node_images, node_socials, domains)
- Storage: mynadi-images (R2, belum dibuat)

### 3.4 Prinsip

1. Kebutuhan manusia, dipenuhi manusia
2. GRATIS, MUDAH, KEREN
3. Think 19 million. Build for 1.
4. Pelan tapi pasti, satu langkah satu verifikasi
5. Fungsional dulu, cantik kemudian
6. Kode utuh via CMD, bukan manual

### 3.5 Struktur Folder

    C:\hakemproject\
    |-- projects/
    |   |-- nadi/              (NADI Home + Builder gratis)
    |   |-- hakem-media/       (Hakem Media + Builder premium)
    |   |-- hakem-project/     (Portofolio)
    |-- book/                  (Book HTML di root repo)
    |-- client-sites/          (Website klien - JANGAN DIUBAH)
    |-- docs/                  (Dokumentasi lengkap)
    |   |-- master/            (Master Doc v3)
    |   |-- seo/               (8 file SEO)
    |   |-- storybook/         (Timeline + milestones)
    |   |-- sql/               (Skema database)
    |-- workers/api/           (Worker mynadi-api)
    |-- scripts/               (Script .ps1 generator)
    |-- index.html             (Portofolio di root)

---

## 4. Larangan untuk AI

- JANGAN hapus folder client-sites/ (milik klien, sudah live)
- JANGAN hapus worker mynadi-api
- JANGAN ubah skema D1 tanpa migrasi
- JANGAN commit file test (test-*.json)
- JANGAN push secret (token, API key) ke Git
- JANGAN ubah struktur folder tanpa keputusan user
- JANGAN pakai library eksternal berat (Tailwind CDN, Alpine.js, Font Awesome)
- JANGAN pakai Google Fonts - pakai system font

---

## 5. Checklist Sebelum Kirim Instruksi

Sebelum AI mengirim balasan berisi kode, cek:

- [ ] Apakah dalam format .ps1 lengkap?
- [ ] Apakah $root = "C:\hakemproject" sudah didefinisikan?
- [ ] Apakah [System.IO.File]::WriteAllText dengan UTF8Encoding($false) dipakai?
- [ ] Apakah isi file lengkap (tidak ada placeholder)?
- [ ] Apakah ada verifikasi Get-ChildItem di akhir?
- [ ] Apakah ada Write-Host "[OK] ..." untuk laporan?
- [ ] Apakah tanpa library eksternal berat?
- [ ] Apakah sesuai dengan struktur folder yang ada?

Jika semua OK - kirim. Jika ada yang kurang - perbaiki dulu.

---

## 6. Ringkasan untuk AI Baru

Jika Anda AI baru yang bergabung ke proyek ini:

1. Baca dokumen ini dari awal sampai akhir
2. Baca docs/master/MASTER_DOC.md untuk konteks lengkap
3. Selalu kirim .ps1 - jangan manual
4. Definisikan $root setiap kali
5. Verifikasi setiap langkah
6. Jangan hapus client-sites/
7. Jangan pakai library berat
8. Bahasa: Indonesia + istilah teknis
9. Nada: Ramah, seperti guru-murid
10. Satu langkah, satu verifikasi

---

**Dokumen ini adalah instruksi permanen untuk semua AI yang membantu HakemProject.**

**Terakhir di-update:** 15 Oktober 2026
**Status:** Aktif - Wajib Dibaca