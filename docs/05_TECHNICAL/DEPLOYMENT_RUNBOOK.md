# Deployment Runbook (Template)

> Isi nilai spesifik setelah platform hosting dipilih. Jangan menyimpan token atau password di file ini.

## Sebelum deploy
- [ ] Periksa branch dan perubahan.
- [ ] Jalankan build dan test.
- [ ] Periksa environment variables di pengelola secret.
- [ ] Pastikan migrasi dan backup aman.
- [ ] Siapkan rollback.

## Deploy
1. Buat release dari commit yang ditinjau.
2. Deploy ke staging bila tersedia.
3. Jalankan smoke test.
4. Deploy ke production.
5. Verifikasi URL, formulir, navigasi, dan alur inti.

## Jika gagal
1. Catat waktu dan gejala.
2. Hentikan perubahan berisiko.
3. Rollback ke versi stabil bila diperlukan.
4. Verifikasi layanan pulih.
5. Dokumentasikan akar masalah dan tindak lanjut.

## Informasi spesifik
Hosting: TBD
Repository: TBD
Domain: TBD
Pipeline: TBD
Rollback procedure: TBD
