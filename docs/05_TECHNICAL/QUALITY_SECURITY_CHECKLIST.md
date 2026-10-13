# Quality & Security Checklist

## Sebelum rilis
- [ ] Build berjalan tanpa error.
- [ ] Alur inti diuji manual dan/atau otomatis.
- [ ] Tampilan diuji pada ponsel dan desktop.
- [ ] Kontras warna, keyboard navigation, label form, dan alt text diperiksa.
- [ ] Error state dan loading state jelas.
- [ ] Input divalidasi dan output disanitasi.
- [ ] Otorisasi dicek pada server.
- [ ] Secret tidak berada di source code/client bundle.
- [ ] Data pribadi diminimalkan.
- [ ] Kebijakan privasi dan ketentuan relevan tersedia bila diperlukan.
- [ ] Backup dan restore diuji untuk data penting.
- [ ] Domain, HTTPS, redirect, dan metadata diperiksa.
- [ ] Analitik menghormati privasi.
- [ ] Ada cara rollback jika rilis bermasalah.

## Setelah rilis
- [ ] Pantau error dan performa.
- [ ] Catat feedback pengguna.
- [ ] Perbarui changelog.
- [ ] Simpan hasil pengujian dan masalah yang diketahui.
