// ==============================================
// Hakem Media Builder - Main JavaScript
// ==============================================

let currentStep = 1;
const totalSteps = 4;
let uploadedPhotos = {};
let activeSlot = null;

// ===== STEP NAVIGATION =====
function goToStep(step) {
  if (step < 1 || step > totalSteps) return;
  currentStep = step;
  
  document.querySelectorAll('.step-content').forEach(el => {
    el.classList.toggle('active', parseInt(el.dataset.step) === step);
  });
  
  document.querySelectorAll('.wstep').forEach(el => {
    const num = parseInt(el.dataset.step);
    el.classList.toggle('active', num === step);
    el.classList.toggle('completed', num < step);
  });
  
  document.querySelectorAll('.dot').forEach((dot, i) => {
    dot.classList.toggle('active', i === step - 1);
  });
  
  if (step === 4) updateReview();
  syncPreview();
}

function nextStep() { goToStep(currentStep + 1); }
function prevStep() { goToStep(currentStep - 1); }

// Klik wizard step
document.querySelectorAll('.wstep').forEach(el => {
  el.addEventListener('click', () => goToStep(parseInt(el.dataset.step)));
});

// ===== FORM SYNC TO PREVIEW =====
const formFields = [
  'brandName', 'category', 'tagline', 'description',
  'whatsapp', 'email', 'headline', 'subheadline',
  'instagram', 'tiktok', 'youtube', 'website'
];

formFields.forEach(id => {
  const el = document.getElementById(id);
  if (el) {
    el.addEventListener('input', syncPreview);
    el.addEventListener('change', syncPreview);
  }
});

function syncPreview() {
  const brandName = document.getElementById('brandName')?.value || 'Brand Anda';
  const category = document.getElementById('category')?.value || '';
  const tagline = document.getElementById('tagline')?.value || '';
  const description = document.getElementById('description')?.value || 'Deskripsi brand Anda akan muncul di sini.';
  const whatsapp = document.getElementById('whatsapp')?.value || '';
  const headline = document.getElementById('headline')?.value || tagline || 'Headline Utama Anda';
  const subheadline = document.getElementById('subheadline')?.value || description.substring(0, 100);
  
  // Update preview
  const pvBrand = document.getElementById('pvBrand');
  const pvFooterBrand = document.getElementById('pvFooterBrand');
  const pvHeadline = document.getElementById('pvHeadline');
  const pvSubheadline = document.getElementById('pvSubheadline');
  const pvDescription = document.getElementById('pvDescription');
  const pvWA = document.getElementById('pvWA');
  
  if (pvBrand) pvBrand.textContent = brandName;
  if (pvFooterBrand) pvFooterBrand.textContent = brandName;
  if (pvHeadline) pvHeadline.textContent = headline;
  if (pvSubheadline) pvSubheadline.textContent = subheadline;
  if (pvDescription) pvDescription.textContent = description;
  
  if (pvWA && whatsapp) {
    const cleanWA = whatsapp.replace(/[^0-9]/g, '');
    pvWA.href = 'https://wa.me/' + cleanWA;
  }
  
  // Update services
  syncServices();
}

// ===== SERVICES =====
function addService() {
  const list = document.getElementById('servicesList');
  if (!list) return;
  const div = document.createElement('div');
  div.className = 'list-item';
  div.innerHTML = '<input type="text" placeholder="Nama layanan baru" class="input-premium">';
  list.appendChild(div);
  div.querySelector('input').addEventListener('input', syncServices);
}

function syncServices() {
  const inputs = document.querySelectorAll('#servicesList input');
  const services = [];
  inputs.forEach(inp => {
    if (inp.value.trim()) services.push(inp.value.trim());
  });
  
  const pvServices = document.getElementById('pvServices');
  if (!pvServices) return;
  
  if (services.length === 0) {
    pvServices.innerHTML = '<div class="service-card">Layanan 1</div><div class="service-card">Layanan 2</div>';
  } else {
    pvServices.innerHTML = services.map(s => 
      '<div class="service-card">' + escapeHtml(s) + '</div>'
    ).join('');
  }
}

document.querySelectorAll('#servicesList input').forEach(inp => {
  inp.addEventListener('input', syncServices);
});

function escapeHtml(text) {
  const div = document.createElement('div');
  div.textContent = text;
  return div.innerHTML;
}

// ===== THEME PICKER =====
document.querySelectorAll('.theme-swatch').forEach(sw => {
  sw.addEventListener('click', () => {
    document.querySelectorAll('.theme-swatch').forEach(s => s.classList.remove('active'));
    sw.classList.add('active');
    const theme = sw.dataset.theme;
    const previewContent = document.getElementById('previewContent');
    if (previewContent) previewContent.dataset.theme = theme;
  });
});

// Set default theme
const defaultTheme = document.querySelector('.theme-swatch[data-theme="premium-dark"]');
if (defaultTheme) defaultTheme.classList.add('active');

// ===== PHOTO UPLOAD =====
const photoInput = document.getElementById('photoInput');

document.querySelectorAll('.photo-slot').forEach(slot => {
  slot.addEventListener('click', () => {
    activeSlot = slot;
    photoInput.click();
  });
});

photoInput?.addEventListener('change', (e) => {
  const file = e.target.files[0];
  if (!file || !activeSlot) return;
  
  if (file.size > 5 * 1024 * 1024) {
    alert('File terlalu besar. Maksimal 5MB.');
    return;
  }
  
  const reader = new FileReader();
  reader.onload = (event) => {
    const slotNum = activeSlot.dataset.slot;
    uploadedPhotos[slotNum] = event.target.result;
    
    // Update slot tampilan
    activeSlot.classList.add('filled');
    activeSlot.innerHTML = '<img src="' + event.target.result + '" alt="Uploaded">';
    
    // Update preview hero jika slot 1
    if (slotNum === '1') {
      const pvHeroPhoto = document.getElementById('pvHeroPhoto');
      if (pvHeroPhoto) {
        pvHeroPhoto.innerHTML = '<img src="' + event.target.result + '" alt="Hero">';
      }
    }
    
    updateReview();
  };
  reader.readAsDataURL(file);
  
  // Reset input supaya bisa upload file yang sama lagi
  photoInput.value = '';
});

// ===== PREVIEW DEVICE TABS =====
document.querySelectorAll('.ptab').forEach(tab => {
  tab.addEventListener('click', () => {
    document.querySelectorAll('.ptab').forEach(t => t.classList.remove('active'));
    tab.classList.add('active');
    const view = tab.dataset.view;
    const frame = document.getElementById('previewFrame');
    if (frame) {
      frame.classList.remove('tablet', 'mobile');
      if (view !== 'desktop') frame.classList.add(view);
    }
  });
});

// ===== REVIEW (STEP 4) =====
function updateReview() {
  const brandName = document.getElementById('brandName')?.value || '-';
  const category = document.getElementById('category')?.value || '-';
  const whatsapp = document.getElementById('whatsapp')?.value || '-';
  const activeTheme = document.querySelector('.theme-swatch.active')?.dataset.theme || '-';
  const photoCount = Object.keys(uploadedPhotos).length;
  
  const rvName = document.getElementById('rvName');
  const rvCategory = document.getElementById('rvCategory');
  const rvWhatsApp = document.getElementById('rvWhatsApp');
  const rvTheme = document.getElementById('rvTheme');
  const rvPhotos = document.getElementById('rvPhotos');
  
  if (rvName) rvName.textContent = brandName;
  if (rvCategory) rvCategory.textContent = category;
  if (rvWhatsApp) rvWhatsApp.textContent = whatsapp;
  if (rvTheme) rvTheme.textContent = activeTheme;
  if (rvPhotos) rvPhotos.textContent = photoCount + ' foto';
}

// ===== PUBLISH =====
function publishSite() {
  const brandName = document.getElementById('brandName')?.value;
  if (!brandName) {
    alert('Mohon isi Nama Brand terlebih dahulu.');
    goToStep(1);
    return;
  }
  
  const whatsapp = document.getElementById('whatsapp')?.value;
  if (!whatsapp) {
    alert('Mohon isi Nomor WhatsApp terlebih dahulu.');
    goToStep(1);
    return;
  }
  
  const domainType = document.querySelector('input[name="domain"]:checked')?.value || 'subdomain';
  
  // Simulasi publish
  const slug = brandName.toLowerCase()
    .replace(/[^a-z0-9\s-]/g, '')
    .replace(/\s+/g, '-')
    .replace(/-+/g, '-')
    .substring(0, 40);
  
  let url = '';
  if (domainType === 'subdomain') {
    url = 'https://' + slug + '.hakem.media';
  } else {
    url = 'https://' + slug + '.com (custom)';
  }
  
  alert('🎉 Website Anda siap dipublish!\n\n' +
        'Nama: ' + brandName + '\n' +
        'URL: ' + url + '\n\n' +
        'Fitur publish backend akan aktif setelah integrasi Worker API.\n' +
        'Untuk saat ini, ini adalah simulasi.');
}

// ===== INIT =====
document.addEventListener('DOMContentLoaded', () => {
  syncPreview();
  console.log('Hakem Media Builder loaded');
});