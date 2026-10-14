# ==============================================
# generate-storybook.ps1
# Generate Storybook HTML untuk HakemProject
# ==============================================

$root = "C:\hakemproject"
Set-Location $root

Write-Host ""
Write-Host "=== Generating Storybook ===" -ForegroundColor Cyan
Write-Host ""

# Buat folder
New-Item -ItemType Directory -Force -Path "projects\hakem-project\storybook" | Out-Null

# ===== FILE 1: index.html =====
$html = @'
<!DOCTYPE html>
<html lang="id">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="theme-color" content="#f6f7f4">
<title>Storybook - HakemProject</title>
<meta name="description" content="Buku induk ekosistem digital NADI - perjalanan, filosofi, strategi, dan arsitektur.">
<link rel="icon" href="/shared/assets/favicon.svg">
<link rel="stylesheet" href="styles.css">
</head>
<body>

<header class="topbar">
  <div class="topbar-inner">
    <a href="/" class="brand">
      <span class="brand-mark">H</span>
      <span class="brand-text">
        <b>Storybook</b>
        <small>HakemProject</small>
      </span>
    </a>
    <div class="search-box">
      <input type="text" id="search" placeholder="Cari di storybook...">
    </div>
    <a href="/" class="back-link">← Portofolio</a>
  </div>
</header>

<div class="layout">
  <aside class="sidebar">
    <div class="sidebar-head">
      <p class="eyebrow">DAFTAR ISI</p>
      <h2>Master Doc v3</h2>
    </div>
    <nav id="toc">
      <a href="#bab-1">1. Filosofi & Arti Nama NADI</a>
      <a href="#bab-2">2. Prinsip & Nilai Proyek</a>
      <a href="#bab-3">3. Tiga Pilar Marketing</a>
      <a href="#bab-4">4. Visi Jangka Panjang</a>
      <a href="#bab-5">5. Tiga Produk Utama</a>
      <a href="#bab-6">6. Arsitektur Teknis</a>
      <a href="#bab-7">7. Tech Stack & Tools</a>
      <a href="#bab-8">8. Roadmap Enam Fase</a>
      <a href="#bab-9">9. Decision Log</a>
      <a href="#bab-10">10. Timeline Perjalanan</a>
      <a href="#bab-11">11. Strategi Marketing</a>
      <a href="#bab-12">12. Sistem Anti-Amnesia</a>
      <a href="#bab-13">13. Analisis AI Stack</a>
      <a href="#bab-14">14. Peran AI</a>
      <a href="#bab-15">15. Model Bisnis</a>
      <a href="#bab-16">16. Diskusi Domain & Naming</a>
      <a href="#bab-17">17. Konsep Masa Depan</a>
      <a href="#bab-18">18. Referensi & Lampiran</a>
    </nav>
  </aside>

  <main class="content" id="content">
    <div class="hero-storybook">
      <p class="eyebrow">BUKU INDUK EKOSISTEM</p>
      <h1>Storybook HakemProject</h1>
      <p class="lede">Perjalanan, filosofi, strategi, dan arsitektur proyek NADI — dari ide menjadi ekosistem digital.</p>
      <div class="hero-meta">
        <span>Versi 3.0</span>
        <span>18 Bab</span>
        <span>15 Oktober 2026</span>
      </div>
    </div>

    <!-- BAB 1 -->
    <section id="bab-1" class="chapter">
      <p class="chapter-num">BAB 1</p>
      <h2>Filosofi & Arti Nama NADI</h2>
      <p>NADI berarti urat nadi — pembuluh darah yang mengalirkan kehidupan ke seluruh tubuh. Dalam bahasa Arab, NADI berarti tempat berkumpul. Akronim global: <strong>Network of Autonomous and Direct Intent</strong>.</p>
      <blockquote>Kebutuhan manusia, dipenuhi manusia.</blockquote>
      <p>AI bukan pengganti manusia. AI adalah perantara yang membantu manusia menemukan manusia lain yang mampu memenuhi kebutuhannya.</p>
    </section>

    <!-- BAB 2 -->
    <section id="bab-2" class="chapter">
      <p class="chapter-num">BAB 2</p>
      <h2>Prinsip & Nilai Proyek</h2>
      <p>Sepuluh nilai inti yang menjadi fondasi setiap keputusan:</p>
      <ol class="principles">
        <li>Pelan tapi pasti dan presisi</li>
        <li>Satu langkah, satu verifikasi</li>
        <li>Fungsional dulu, cantik kemudian</li>
        <li>Jangan hapus sebelum audit</li>
        <li>Keamanan tidak bisa dikompromikan</li>
        <li>Dokumentasi adalah sumber kebenaran</li>
        <li>AI adalah tenaga bantu yang bisa diganti</li>
        <li>Think 19 million. Build for 1.</li>
        <li>Setiap keputusan harus tercatat</li>
        <li>Jangan jatuh cinta pada visi sampai data membuktikannya</li>
      </ol>
    </section>

    <!-- BAB 3 -->
    <section id="bab-3" class="chapter">
      <p class="chapter-num">BAB 3</p>
      <h2>Tiga Pilar Marketing</h2>
      <div class="pillars">
        <div class="pillar">
          <h3>GRATIS</h3>
          <p>Tier 1 sepenuhnya gratis untuk UMKM. Tanpa biaya tersembunyi.</p>
        </div>
        <div class="pillar">
          <h3>MUDAH</h3>
          <p>3 langkah: isi form, preview, publish. Tanpa coding, tanpa design skill.</p>
        </div>
        <div class="pillar">
          <h3>KEREN</h3>
          <p>URL sendiri, desain modern, terhubung sosmed, mobile-first.</p>
        </div>
      </div>
      <p>Fenomena FOMO: <strong>"Apa web kamu?"</strong> menjadi status symbol baru di Indonesia.</p>
    </section>

    <!-- BAB 4 -->
    <section id="bab-4" class="chapter">
      <p class="chapter-num">BAB 4</p>
      <h2>Visi Jangka Panjang</h2>
      <p>NADI bukan sekadar yellow pages. NADI adalah <strong>rumah digital UMKM Indonesia</strong>.</p>
      <h3>Tiga Jaringan NADI</h3>
      <ul>
        <li><strong>Commerce</strong> — UMKM ke pembeli</li>
        <li><strong>Employment</strong> — UMKM ke pekerja</li>
        <li><strong>Human Service</strong> — manusia ke manusia</li>
      </ul>
    </section>

    <!-- BAB 5 -->
    <section id="bab-5" class="chapter">
      <p class="chapter-num">BAB 5</p>
      <h2>Tiga Produk Utama</h2>
      <div class="products">
        <article>
          <h3>NADI</h3>
          <p class="tag">Platform Utama</p>
          <p>mynadi.pages.dev — Digitalisasi massal UMKM Indonesia (gratis).</p>
        </article>
        <article>
          <h3>Hakem Media</h3>
          <p class="tag">Studio Premium</p>
          <p>hakem-media.pages.dev — Layanan website custom untuk kreator & bisnis.</p>
        </article>
        <article>
          <h3>HakemProject</h3>
          <p class="tag">Portofolio</p>
          <p>hakem-project.pages.dev — Wajah induk usaha, storybook, dan referensi.</p>
        </article>
      </div>
    </section>

    <!-- BAB 6 -->
    <section id="bab-6" class="chapter">
      <p class="chapter-num">BAB 6</p>
      <h2>Arsitektur Teknis</h2>
      <p>Multi-tenant single engine: 1 engine melayani 19 juta Node.</p>
      <pre><code>INTERNET
   |
   +--> mynadi.my.id (Pages)
   +--> api.mynadi.my.id (Worker)
   +--> *.mynadi.my.id (Dispatch Worker)
           |
           +--> Cloudflare D1 (Database)
           +--> Cloudflare R2 (Images)
           |
           +--> NADI Node (Website UMKM)</code></pre>
    </section>

    <!-- BAB 7 -->
    <section id="bab-7" class="chapter">
      <p class="chapter-num">BAB 7</p>
      <h2>Tech Stack & Tools</h2>
      <ul>
        <li><strong>Frontend:</strong> HTML, CSS, JavaScript (vanilla)</li>
        <li><strong>Backend:</strong> Cloudflare Workers (V8 Isolates)</li>
        <li><strong>Database:</strong> Cloudflare D1 (SQLite)</li>
        <li><strong>Storage:</strong> Cloudflare R2</li>
        <li><strong>Domain:</strong> mynadi.my.id (rencana)</li>
        <li><strong>AI Stack:</strong> ChatGPT, Gemini, DeepSeek</li>
      </ul>
      <h3>Palet Warna NADI</h3>
      <div class="palette">
        <span style="background:#F6F7F4">#F6F7F4</span>
        <span style="background:#2C5A47;color:white">#2C5A47</span>
        <span style="background:#D95757;color:white">#D95757</span>
        <span style="background:#568BBD;color:white">#568BBD</span>
      </div>
    </section>

    <!-- BAB 8 -->
    <section id="bab-8" class="chapter">
      <p class="chapter-num">BAB 8</p>
      <h2>Roadmap Enam Fase</h2>
      <table>
        <thead><tr><th>Fase</th><th>Nama</th><th>Status</th></tr></thead>
        <tbody>
          <tr><td>Fase 0</td><td>Ide & Eksplorasi</td><td>Selesai</td></tr>
          <tr><td>Fase 1</td><td>Fondasi & Struktur</td><td>Selesai</td></tr>
          <tr><td>Fase 2</td><td>Backend & Domain</td><td>Berjalan</td></tr>
          <tr><td>Fase 3</td><td>Scale (Node pertama)</td><td>Nanti</td></tr>
          <tr><td>Fase 4</td><td>NADI Hub</td><td>Nanti</td></tr>
          <tr><td>Fase 5</td><td>NADI AI (Dispatcher)</td><td>Nanti</td></tr>
          <tr><td>Fase 6</td><td>NADI Network Global</td><td>Masa Depan</td></tr>
        </tbody>
      </table>
    </section>

    <!-- BAB 9 -->
    <section id="bab-9" class="chapter">
      <p class="chapter-num">BAB 9</p>
      <h2>Decision Log</h2>
      <p>14 keputusan penting (D-001 s/d D-014) yang membentuk proyek NADI. Mulai dari Monorepo Strategy, Naming MYNADI, hingga Subdomain Strategy.</p>
      <p>Setiap keputusan tercatat dengan konteks, keputusan, alasan, dan konsekuensi.</p>
    </section>

    <!-- BAB 10 -->
    <section id="bab-10" class="chapter">
      <p class="chapter-num">BAB 10</p>
      <h2>Timeline Perjalanan</h2>
      <ul class="timeline">
        <li><strong>Sebelum Okt 2026:</strong> Ide NADI lahir dari pengalaman mogok di jalan.</li>
        <li><strong>12 Okt 2026:</strong> Audit struktur, monorepo strategy.</li>
        <li><strong>13 Okt 2026:</strong> Rename Builder, buat 8 file SEO.</li>
        <li><strong>14 Okt 2026:</strong> Hari besar — 4 website live, Worker API, D1 database.</li>
        <li><strong>15 Okt 2026:</strong> CRUD lengkap, Master Doc v3 (61 KB).</li>
      </ul>
    </section>

    <!-- BAB 11 -->
    <section id="bab-11" class="chapter">
      <p class="chapter-num">BAB 11</p>
      <h2>Strategi Marketing</h2>
      <p>Positioning: Yellow Pages modern. Tagline: "Apa web kamu?"</p>
      <p>Segmentasi: UMKM kecil, Kreator, Pekerja Lepas, Bisnis Menengah.</p>
      <p>Roadmap konten: Seeding → Viral → Scale → Ecosystem.</p>
    </section>

    <!-- BAB 12 -->
    <section id="bab-12" class="chapter">
      <p class="chapter-num">BAB 12</p>
      <h2>Sistem Anti-Amnesia</h2>
      <p>Dokumentasi adalah sumber kebenaran, bukan percakapan AI.</p>
      <h3>Tiga Lapisan Dokumentasi</h3>
      <ul>
        <li><strong>Lapisan 1 (Identitas):</strong> Master Doc, Philosophy</li>
        <li><strong>Lapisan 2 (Teknis):</strong> Architecture, Stack Decisions</li>
        <li><strong>Lapisan 3 (Operasional):</strong> Status, Next Session</li>
      </ul>
    </section>

    <!-- BAB 13 -->
    <section id="bab-13" class="chapter">
      <p class="chapter-num">BAB 13</p>
      <h2>Analisis AI Stack</h2>
      <table>
        <thead><tr><th>Kriteria</th><th>ChatGPT</th><th>Gemini</th><th>DeepSeek</th></tr></thead>
        <tbody>
          <tr><td>Nalar & Strategi</td><td>5/5</td><td>4/5</td><td>4/5</td></tr>
          <tr><td>Arsitektur</td><td>5/5</td><td>4/5</td><td>4/5</td></tr>
          <tr><td>Kode</td><td>4/5</td><td>4/5</td><td>4/5</td></tr>
          <tr><td>Prototipe AI</td><td>3/5</td><td>5/5</td><td>3/5</td></tr>
          <tr><td>Hemat Biaya</td><td>3/5</td><td>5/5</td><td>5/5</td></tr>
        </tbody>
      </table>
    </section>

    <!-- BAB 14 -->
    <section id="bab-14" class="chapter">
      <p class="chapter-num">BAB 14</p>
      <h2>Peran AI dalam Proyek</h2>
      <p>AI adalah tenaga bantu yang bisa diganti. Dokumentasi adalah sumber kebenaran.</p>
      <p>Aturan: Baca sebelum mengubah, satu tugas satu ruang lingkup, verifikasi bukan berasumsi.</p>
    </section>

    <!-- BAB 15 -->
    <section id="bab-15" class="chapter">
      <p class="chapter-num">BAB 15</p>
      <h2>Model Bisnis</h2>
      <p>Free First, Monetize Later. Tier 1 gratis, monetisasi di Tier 2+.</p>
      <ul>
        <li>Tahun 1: Rp 0 (fokus akuisisi)</li>
        <li>Tahun 2: Rp 100 juta (Tier 2+)</li>
        <li>Tahun 3: Rp 1 miliar (Tier 3+)</li>
        <li>Tahun 5: Rp 10 miliar (ekosistem)</li>
      </ul>
    </section>

    <!-- BAB 16 -->
    <section id="bab-16" class="chapter">
      <p class="chapter-num">BAB 16</p>
      <h2>Diskusi Domain & Naming</h2>
      <p>Kandidat: nadi.id, nadi.com, nadiku.id, nadiq.id, mynadi.my.id.</p>
      <p>Keputusan final: <strong>mynadi.my.id</strong> (Rp 9.900 tahun pertama). MY NADI bisa dibaca lintas bahasa.</p>
      <p>Goal akhir: nadi.id (jika modal cukup).</p>
    </section>

    <!-- BAB 17 -->
    <section id="bab-17" class="chapter">
      <p class="chapter-num">BAB 17</p>
      <h2>Konsep Masa Depan</h2>
      <ul>
        <li><strong>NADI Hub (Fase 4):</strong> Direktori UMKM berdasarkan kategori & lokasi.</li>
        <li><strong>NADI AI Dispatcher (Fase 5):</strong> Understand intent, screening, match dengan manusia.</li>
        <li><strong>NADI Network Global (Fase 6):</strong> Ekspansi Asia dan Global.</li>
        <li><strong>AI Architect:</strong> Proyek masa depan untuk analisis arsitektur.</li>
      </ul>
      <blockquote>AI bukan pengganti manusia. AI adalah jembatan antara kebutuhan manusia dan manusia yang mampu memenuhi.</blockquote>
    </section>

    <!-- BAB 18 -->
    <section id="bab-18" class="chapter">
      <p class="chapter-num">BAB 18</p>
      <h2>Referensi & Lampiran</h2>
      <h3>Website Live</h3>
      <ul>
        <li><a href="https://mynadi.pages.dev">NADI Home</a></li>
        <li><a href="https://mynadi.pages.dev/builder">NADI Builder</a></li>
        <li><a href="https://hakem-media.pages.dev">Hakem Media</a></li>
        <li><a href="https://hakem-project.pages.dev">Portofolio</a></li>
      </ul>
      <h3>Backend</h3>
      <ul>
        <li><a href="https://mynadi-api.hakemproject.workers.dev/api/health">Worker API Health</a></li>
      </ul>
      <p class="final-quote">Think 19 million. Build for 1.</p>
    </section>

    <footer class="storybook-footer">
      <p>© 2026 <strong>Lukmanul Hakim</strong> · HakemProject</p>
      <p class="small">Storybook v3.0 · Hosted on Cloudflare Edge Network</p>
    </footer>
  </main>
</div>

<script src="main.js"></script>
</body>
</html>
'@
[System.IO.File]::WriteAllText("$root\projects\hakem-project\storybook\index.html", $html, [System.Text.UTF8Encoding]::new($false))
Write-Host "[OK] index.html" -ForegroundColor Green

# ===== FILE 2: styles.css =====
$css = @'
* { box-sizing: border-box; margin: 0; padding: 0; }
body {
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
  background: #f6f7f4;
  color: #1c2624;
  line-height: 1.7;
  font-size: 16px;
}

/* TOPBAR */
.topbar {
  background: #ffffff;
  border-bottom: 1px solid #e2e7e1;
  position: sticky;
  top: 0;
  z-index: 100;
}
.topbar-inner {
  max-width: 1400px;
  margin: 0 auto;
  padding: 12px 24px;
  display: flex;
  align-items: center;
  gap: 24px;
}
.brand {
  display: flex;
  align-items: center;
  gap: 10px;
  text-decoration: none;
  color: inherit;
}
.brand-mark {
  width: 36px; height: 36px;
  background: #2c5a47;
  color: white;
  border-radius: 10px;
  display: grid; place-items: center;
  font-weight: 900;
}
.brand-text b { display: block; font-size: 0.9rem; font-weight: 800; }
.brand-text small { display: block; font-size: 0.68rem; color: #77827b; }
.search-box {
  flex: 1;
  max-width: 400px;
}
.search-box input {
  width: 100%;
  padding: 8px 14px;
  border: 1px solid #dce3dc;
  border-radius: 8px;
  background: #f6f7f4;
  font-size: 0.85rem;
  outline: none;
}
.search-box input:focus {
  background: white;
  border-color: #6d9a81;
}
.back-link {
  font-size: 0.82rem;
  color: #2c5a47;
  text-decoration: none;
  font-weight: 700;
}

/* LAYOUT */
.layout {
  max-width: 1400px;
  margin: 0 auto;
  display: grid;
  grid-template-columns: 280px 1fr;
  gap: 40px;
  padding: 32px 24px;
}

/* SIDEBAR */
.sidebar {
  position: sticky;
  top: 88px;
  height: fit-content;
  max-height: calc(100vh - 120px);
  overflow-y: auto;
  padding-right: 12px;
}
.sidebar-head { margin-bottom: 20px; }
.eyebrow {
  font-size: 0.68rem;
  letter-spacing: 0.14em;
  font-weight: 800;
  color: #6d9a81;
  margin-bottom: 6px;
}
.sidebar-head h2 {
  font-size: 1.1rem;
  font-weight: 800;
  letter-spacing: -0.02em;
}
#toc { display: flex; flex-direction: column; gap: 2px; }
#toc a {
  padding: 8px 12px;
  font-size: 0.82rem;
  color: #4a5651;
  text-decoration: none;
  border-radius: 8px;
  border-left: 2px solid transparent;
  transition: all 0.15s;
}
#toc a:hover {
  background: #eef2ec;
  color: #2c5a47;
}
#toc a.active {
  background: #e6f4ea;
  color: #2c5a47;
  border-left-color: #2c5a47;
  font-weight: 700;
}

/* CONTENT */
.content {
  max-width: 780px;
  padding-bottom: 60px;
}
.hero-storybook {
  padding: 40px 0 60px;
  border-bottom: 1px solid #e2e7e1;
  margin-bottom: 60px;
}
.hero-storybook h1 {
  font-size: clamp(2rem, 4vw, 3rem);
  letter-spacing: -0.04em;
  margin: 12px 0 16px;
  line-height: 1.1;
}
.lede {
  font-size: 1.1rem;
  color: #68736e;
  max-width: 600px;
  margin-bottom: 24px;
}
.hero-meta {
  display: flex;
  gap: 20px;
  font-size: 0.78rem;
  color: #6d9a81;
  font-weight: 700;
}

/* CHAPTERS */
.chapter {
  padding: 48px 0;
  border-bottom: 1px solid #eef2ec;
  scroll-margin-top: 100px;
}
.chapter:last-of-type { border-bottom: none; }
.chapter-num {
  font-size: 0.68rem;
  letter-spacing: 0.16em;
  font-weight: 800;
  color: #6d9a81;
  margin-bottom: 8px;
}
.chapter h2 {
  font-size: clamp(1.5rem, 3vw, 2rem);
  letter-spacing: -0.03em;
  margin-bottom: 20px;
  line-height: 1.2;
}
.chapter h3 {
  font-size: 1.15rem;
  margin: 24px 0 12px;
  letter-spacing: -0.02em;
}
.chapter p { margin-bottom: 16px; color: #4a5651; }
.chapter ul, .chapter ol {
  margin: 12px 0 20px 24px;
  color: #4a5651;
}
.chapter li { margin-bottom: 8px; }
.chapter strong { color: #1c2624; font-weight: 700; }
.chapter a {
  color: #2c5a47;
  font-weight: 600;
  text-decoration: underline;
  text-decoration-color: #c4d5c8;
}
.chapter a:hover { text-decoration-color: #2c5a47; }

/* BLOCKQUOTE */
blockquote {
  background: #eef2ec;
  border-left: 4px solid #6d9a81;
  padding: 16px 20px;
  margin: 20px 0;
  font-style: italic;
  color: #2c5a47;
  font-weight: 600;
  border-radius: 0 8px 8px 0;
}

/* CODE */
pre {
  background: #1c2624;
  color: #e2e7e1;
  padding: 20px;
  border-radius: 12px;
  overflow-x: auto;
  font-family: "SF Mono", Monaco, Consolas, monospace;
  font-size: 0.8rem;
  line-height: 1.6;
  margin: 20px 0;
}
code {
  font-family: "SF Mono", Monaco, Consolas, monospace;
  font-size: 0.85em;
  background: #eef2ec;
  padding: 2px 6px;
  border-radius: 4px;
  color: #2c5a47;
}
pre code { background: none; padding: 0; color: inherit; }

/* TABLE */
table {
  width: 100%;
  border-collapse: collapse;
  margin: 20px 0;
  font-size: 0.88rem;
}
th, td {
  padding: 10px 12px;
  text-align: left;
  border-bottom: 1px solid #eef2ec;
}
th {
  background: #eef2ec;
  font-weight: 800;
  color: #2c5a47;
  font-size: 0.78rem;
  letter-spacing: 0.02em;
  text-transform: uppercase;
}
tr:hover td { background: #fafbf9; }

/* PILLARS */
.pillars {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
  gap: 16px;
  margin: 24px 0;
}
.pillar {
  background: white;
  border: 1px solid #e2e7e1;
  border-radius: 14px;
  padding: 20px;
}
.pillar h3 {
  font-size: 0.75rem;
  letter-spacing: 0.14em;
  color: #6d9a81;
  margin-bottom: 8px;
  margin-top: 0;
}
.pillar p { font-size: 0.88rem; color: #4a5651; margin: 0; }

/* PRODUCTS */
.products {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 16px;
  margin: 24px 0;
}
.products article {
  background: white;
  border: 1px solid #e2e7e1;
  border-radius: 14px;
  padding: 20px;
}
.products h3 { font-size: 1rem; margin: 0 0 4px; }
.products .tag {
  font-size: 0.68rem;
  letter-spacing: 0.1em;
  color: #6d9a81;
  font-weight: 800;
  margin-bottom: 8px;
}
.products p:last-child { font-size: 0.85rem; margin: 0; }

/* PALETTE */
.palette {
  display: flex;
  gap: 8px;
  margin: 16px 0;
  flex-wrap: wrap;
}
.palette span {
  padding: 12px 16px;
  border-radius: 8px;
  font-size: 0.72rem;
  font-weight: 700;
  font-family: "SF Mono", Monaco, monospace;
  border: 1px solid #e2e7e1;
}

/* TIMELINE */
.timeline { list-style: none; margin-left: 0; padding-left: 0; }
.timeline li {
  padding: 12px 0 12px 24px;
  border-left: 2px solid #dce3dc;
  position: relative;
}
.timeline li::before {
  content: '';
  position: absolute;
  left: -7px;
  top: 20px;
  width: 12px;
  height: 12px;
  border-radius: 50%;
  background: #6d9a81;
  border: 2px solid #f6f7f4;
}

/* FOOTER */
.storybook-footer {
  padding: 40px 0;
  border-top: 1px solid #e2e7e1;
  margin-top: 40px;
  text-align: center;
  color: #77827b;
  font-size: 0.82rem;
}
.storybook-footer .small {
  font-size: 0.72rem;
  margin-top: 4px;
  color: #a0a8a3;
}

/* FINAL QUOTE */
.final-quote {
  text-align: center;
  font-size: 1.4rem;
  font-style: italic;
  color: #2c5a47;
  margin: 40px 0 20px;
  font-weight: 600;
}

/* SEARCH HIGHLIGHT */
.highlight {
  background: #ffe9a8;
  padding: 2px 0;
  border-radius: 2px;
}

/* MOBILE */
@media (max-width: 900px) {
  .layout {
    grid-template-columns: 1fr;
    gap: 24px;
    padding: 20px 16px;
  }
  .sidebar {
    position: static;
    max-height: none;
    padding-right: 0;
    border-bottom: 1px solid #e2e7e1;
    padding-bottom: 20px;
  }
  #toc {
    flex-direction: row;
    flex-wrap: wrap;
    gap: 6px;
  }
  #toc a {
    font-size: 0.75rem;
    padding: 6px 10px;
    background: #eef2ec;
    border-radius: 99px;
    border-left: none;
  }
  .topbar-inner {
    flex-wrap: wrap;
    gap: 12px;
  }
  .search-box { order: 3; width: 100%; max-width: none; }
  .back-link { margin-left: auto; }
  .hero-storybook { padding: 24px 0 32px; margin-bottom: 32px; }
  .chapter { padding: 32px 0; }
  .pillars, .products { grid-template-columns: 1fr; }
}
'@
[System.IO.File]::WriteAllText("$root\projects\hakem-project\storybook\styles.css", $css, [System.Text.UTF8Encoding]::new($false))
Write-Host "[OK] styles.css" -ForegroundColor Green

# ===== FILE 3: main.js =====
$js = @'
// ==============================================
// Storybook - Main JavaScript
// ==============================================

// ===== SMOOTH SCROLL & ACTIVE TOC =====
document.querySelectorAll('#toc a').forEach(link => {
  link.addEventListener('click', (e) => {
    e.preventDefault();
    const targetId = link.getAttribute('href').substring(1);
    const target = document.getElementById(targetId);
    if (target) {
      target.scrollIntoView({ behavior: 'smooth', block: 'start' });
      history.replaceState(null, '', '#' + targetId);
    }
  });
});

// ===== HIGHLIGHT ACTIVE CHAPTER =====
const chapters = document.querySelectorAll('.chapter');
const tocLinks = document.querySelectorAll('#toc a');

const observer = new IntersectionObserver((entries) => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      const id = entry.target.id;
      tocLinks.forEach(link => {
        link.classList.toggle('active', link.getAttribute('href') === '#' + id);
      });
    }
  });
}, { rootMargin: '-20% 0px -70% 0px' });

chapters.forEach(chapter => observer.observe(chapter));

// ===== SEARCH FUNCTIONALITY =====
const searchInput = document.getElementById('search');
let searchTimeout;

searchInput.addEventListener('input', (e) => {
  clearTimeout(searchTimeout);
  searchTimeout = setTimeout(() => {
    const query = e.target.value.trim().toLowerCase();
    performSearch(query);
  }, 200);
});

function performSearch(query) {
  // Clear existing highlights
  document.querySelectorAll('.highlight').forEach(el => {
    const parent = el.parentNode;
    parent.replaceChild(document.createTextNode(el.textContent), el);
    parent.normalize();
  });

  if (!query || query.length < 2) return;

  // Search in chapters
  let firstMatch = null;
  chapters.forEach(chapter => {
    const text = chapter.textContent.toLowerCase();
    if (text.includes(query) && !firstMatch) {
      firstMatch = chapter;
    }
  });

  if (firstMatch) {
    firstMatch.scrollIntoView({ behavior: 'smooth', block: 'start' });
    // Highlight text in chapter
    highlightText(firstMatch, query);
  }
}

function highlightText(element, query) {
  const walker = document.createTreeWalker(element, NodeFilter.SHOW_TEXT);
  const textNodes = [];
  let node;
  while (node = walker.nextNode()) {
    if (node.nodeValue.toLowerCase().includes(query)) {
      textNodes.push(node);
    }
  }

  textNodes.forEach(textNode => {
    const text = textNode.nodeValue;
    const lowerText = text.toLowerCase();
    const index = lowerText.indexOf(query);
    if (index === -1) return;

    const before = text.substring(0, index);
    const match = text.substring(index, index + query.length);
    const after = text.substring(index + query.length);

    const mark = document.createElement('mark');
    mark.className = 'highlight';
    mark.textContent = match;

    const parent = textNode.parentNode;
    parent.replaceChild(document.createTextNode(after), textNode);
    parent.insertBefore(mark, parent.lastChild);
    parent.insertBefore(document.createTextNode(before), mark);
  });
}

// ===== KEYBOARD SHORTCUT =====
document.addEventListener('keydown', (e) => {
  // Ctrl+K atau Cmd+K untuk fokus search
  if ((e.ctrlKey || e.metaKey) && e.key === 'k') {
    e.preventDefault();
    searchInput.focus();
    searchInput.select();
  }
  // Escape untuk clear search
  if (e.key === 'Escape') {
    searchInput.value = '';
    performSearch('');
    searchInput.blur();
  }
});

// ===== INIT =====
console.log('Storybook v3.0 loaded');
'@
[System.IO.File]::WriteAllText("$root\projects\hakem-project\storybook\main.js", $js, [System.Text.UTF8Encoding]::new($false))
Write-Host "[OK] main.js" -ForegroundColor Green

# ===== Verifikasi =====
Write-Host ""
Write-Host "=== Cek Storybook ===" -ForegroundColor Cyan
Get-ChildItem "projects\hakem-project\storybook" -Recurse | Select-Object Name, Length
Write-Host ""
Write-Host "=== SELESAI ===" -ForegroundColor Cyan