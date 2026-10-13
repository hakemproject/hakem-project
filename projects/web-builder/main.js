const fields = ["bizName", "bizTheme", "bizWA", "bizHeadline", "bizSubheadline", "bizPromo", "bizAddress"];

fields.forEach(id => {
  const el = document.getElementById(id);
  if (el) {
    el.addEventListener("input", syncPreview);
    el.addEventListener("change", syncPreview);
  }
});

function syncPreview() {
  const data = getFormData();
  document.getElementById("prevName").textContent = data.name;
  document.getElementById("prevHeadline").textContent = data.headline;
  document.getElementById("prevSubheadline").textContent = data.subheadline;
  document.getElementById("prevPromo").textContent = data.promo;
  document.getElementById("prevAddress").textContent = data.address;

  const promoBox = document.getElementById("prevPromoBox");
  promoBox.style.display = data.promo.trim() ? "block" : "none";

  const frame = document.getElementById("previewFrame");
  frame.setAttribute("data-theme", data.theme);
  document.getElementById("prevBtnWA").href = `https://wa.me/${data.wa}?text=Halo%20${encodeURIComponent(data.name)},%20saya%20mau%20order`;

  localStorage.setItem("nadi_builder_draft", JSON.stringify(data));
}

function getFormData() {
  return {
    name: document.getElementById("bizName").value,
    theme: document.getElementById("bizTheme").value,
    wa: document.getElementById("bizWA").value,
    headline: document.getElementById("bizHeadline").value,
    subheadline: document.getElementById("bizSubheadline").value,
    promo: document.getElementById("bizPromo").value,
    address: document.getElementById("bizAddress").value,
    id: "ND-" + Math.floor(100000 + Math.random() * 900000)
  };
}

function loadSampleData() {
  document.getElementById("bizName").value = "Seblak Prasmanan Mang Ujang";
  document.getElementById("bizTheme").value = "pedas";
  document.getElementById("bizWA").value = "6281234567890";
  document.getElementById("bizHeadline").value = "Seblak Prasmanan Toping Melimpah Mulai 10 Ribuan!";
  document.getElementById("bizSubheadline").value = "Bumbu rempah racikan sendiri, level pedas 1-5 gurih nagih!";
  document.getElementById("bizPromo").value = "Gratis Es Teh Manis Tiap Beli Porsi Komplit";
  document.getElementById("bizAddress").value = "Jl. Gubeng Kertajaya No. 12, Surabaya";
  syncPreview();
}

function exportSingleFileHTML() {
  const d = getFormData();
  const html = `<!DOCTYPE html>
<html lang="id" data-theme="${d.theme}">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>${d.name} — ${d.headline}</title>
  <meta name="description" content="${d.subheadline}">
  <meta name="nadi-node-id" content="${d.id}">
  <meta name="nadi-node-category" content="${d.theme}">
  <script src="https://cdn.tailwindcss.com"></script>
  <link rel="stylesheet" href="https://raw.githubusercontent.com/hakemproject/hakemproject/main/projects/web-builder/assets/themes.css">
  <script type="application/ld+json">
  {
    "@context": "https://schema.org",
    "@type": "LocalBusiness",
    "name": "${d.name}",
    "telephone": "${d.wa}",
    "address": { "@type": "PostalAddress", "streetAddress": "${d.address}" }
  }
  </script>
</head>
<body class="bg-stone-50 text-stone-900 min-h-screen p-4 flex flex-col justify-between max-w-md mx-auto antialiased">
  <div>
    <header class="bg-white p-4 rounded-2xl shadow-sm flex justify-between items-center mb-6">
      <h1 class="font-extrabold text-sm">${d.name}</h1>
      <span class="text-xs text-emerald-700 bg-emerald-50 px-3 py-1 rounded-full font-bold">🟢 SIAP MELAYANI</span>
    </header>
    <main class="text-center py-4">
      <h2 class="text-2xl font-black mb-2 text-stone-900 leading-tight">${d.headline}</h2>
      <p class="text-xs text-stone-600 leading-relaxed mb-4">${d.subheadline}</p>
      ${d.promo ? `<div class="bg-amber-50 text-amber-800 p-3 rounded-xl text-xs font-bold mb-4">🎁 ${d.promo}</div>` : ""}
      <div class="bg-white p-4 rounded-2xl border border-stone-200 mt-4 text-xs text-left">
        <span class="font-bold text-stone-800">📍 Lokasi:</span>
        <p class="text-stone-600 mt-1">${d.address}</p>
        <a href="https://maps.google.com/?q=${encodeURIComponent(d.address)}" target="_blank" class="text-emerald-700 font-bold block mt-2">Buka Google Maps ↗</a>
      </div>
    </main>
  </div>
  <footer class="sticky bottom-4 pt-6">
    <a href="https://wa.me/${d.wa}?text=Halo%20${encodeURIComponent(d.name)}" class="block text-center py-4 bg-emerald-600 hover:bg-emerald-500 text-white font-extrabold rounded-2xl shadow-lg text-sm">
      💬 Chat WhatsApp Sekarang
    </a>
    <p class="text-[10px] text-center text-stone-400 mt-2 font-mono">Node #${d.id} · Jaringan NADI</p>
  </footer>
</body>
</html>`;

  const blob = new Blob([html], { type: "text/html" });
  const a = document.createElement("a");
  a.href = URL.createObjectURL(blob);
  a.download = "index.html";
  a.click();
}

window.addEventListener("DOMContentLoaded", () => {
  const saved = localStorage.getItem("nadi_builder_draft");
  if (saved) {
    try {
      const p = JSON.parse(saved);
      document.getElementById("bizName").value = p.name || "";
      document.getElementById("bizTheme").value = p.theme || "pedas";
      document.getElementById("bizWA").value = p.wa || "";
      document.getElementById("bizHeadline").value = p.headline || "";
      document.getElementById("bizSubheadline").value = p.subheadline || "";
      document.getElementById("bizPromo").value = p.promo || "";
      document.getElementById("bizAddress").value = p.address || "";
    } catch(e) {}
  }
  syncPreview();
});
