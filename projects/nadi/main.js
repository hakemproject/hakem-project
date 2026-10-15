/* ============================================================
   NADI — Main JS v2.0
   Sticky header · Smooth anchor · Ticker pause · Reveal on scroll
   Ringan, tanpa library
   ============================================================ */

(function () {
  'use strict';

  // Deteksi reduced motion
  const prefersReduced = window.matchMedia('(prefers-reduced-motion: reduce)').matches;

  // ---------- 1. Auto-year ----------
  function setYear() {
    const yearEl = document.querySelector('[data-year]');
    if (yearEl) yearEl.textContent = new Date().getFullYear();
  }

  // ---------- 2. Sticky header scroll ----------
  function initStickyHeader() {
    const nav = document.querySelector('.nav');
    if (!nav) return;

    let ticking = false;

    function onScroll() {
      if (ticking) return;
      ticking = true;
      requestAnimationFrame(() => {
        if (window.scrollY > 20) {
          nav.classList.add('scrolled');
        } else {
          nav.classList.remove('scrolled');
        }
        ticking = false;
      });
    }

    window.addEventListener('scroll', onScroll, { passive: true });
    onScroll();
  }

  // ---------- 3. Smooth anchor scroll (dengan offset header) ----------
  function initSmoothAnchor() {
    const links = document.querySelectorAll('a[href^="#"]');
    const navHeight = 84;

    links.forEach(link => {
      link.addEventListener('click', (e) => {
        const href = link.getAttribute('href');
        if (!href || href === '#') return;

        const target = document.querySelector(href);
        if (!target) return;

        e.preventDefault();
        const top = target.getBoundingClientRect().top + window.scrollY - navHeight;

        window.scrollTo({
          top: top,
          behavior: prefersReduced ? 'auto' : 'smooth'
        });
      });
    });
  }

  // ---------- 4. Ticker pause on hover ----------
  function initTickerPause() {
    const ticker = document.querySelector('.ticker');
    const track = document.querySelector('.ticker-track');
    if (!ticker || !track) return;

    ticker.addEventListener('mouseenter', () => {
      track.style.animationPlayState = 'paused';
    });
    ticker.addEventListener('mouseleave', () => {
      track.style.animationPlayState = 'running';
    });
  }

  // ---------- 5. Reveal on scroll (IntersectionObserver) ----------
  function initReveal() {
    if (prefersReduced) {
      document.querySelectorAll('[data-reveal]').forEach(el => el.classList.add('revealed'));
      return;
    }

    const targets = document.querySelectorAll('[data-reveal]');
    if (!targets.length) return;

    const observer = new IntersectionObserver((entries) => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          entry.target.classList.add('revealed');
          observer.unobserve(entry.target);
        }
      });
    }, {
      threshold: 0.15,
      rootMargin: '0px 0px -60px 0px'
    });

    targets.forEach(el => observer.observe(el));
  }

  // ---------- Init semua ----------
  function init() {
    setYear();
    initStickyHeader();
    initSmoothAnchor();
    initTickerPause();
    initReveal();
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', init);
  } else {
    init();
  }
})();