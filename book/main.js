// ==============================================
// Book - Main JavaScript
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
console.log('Book v3.0 loaded');