# Architecture Notes — Web Builder

## Status
PROVISIONAL. Bukan keputusan stack.

## Domain utama
- Editor / dashboard pengguna.
- Model konten situs.
- Renderer halaman publik.
- Publikasi dan routing URL.
- Penyimpanan media.
- Autentikasi/otorisasi bila diperlukan.
- Logging, backup, dan observabilitas.

## Pertanyaan arsitektur
- Apakah output website statis, dinamis, atau hibrida?
- Bagaimana isolasi data antar pengguna?
- Bagaimana domain custom dipetakan?
- Bagaimana draft dan publikasi dipisahkan?
- Apa strategi backup dan pemulihan?
- Bagaimana pengguna mengekspor konten bila berhenti?
- Apa batas biaya per situs dan per pengguna?

## Prinsip
1. Mulai dari arsitektur paling sederhana yang memenuhi kebutuhan.
2. Pisahkan konten dari presentasi agar template dapat diganti.
3. Validasi input dan sanitasi output.
4. Terapkan otorisasi di server, bukan hanya UI.
5. Buat backup dan jalur ekspor sejak awal.
6. Hindari menyimpan rahasia di frontend.
7. Uji performa halaman publik pada perangkat dan jaringan yang realistis.
