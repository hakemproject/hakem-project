-- ==============================================
-- NADI Database Schema (D1 - SQLite)
-- ==============================================

-- TABEL 1: NODES (Data UMKM)
CREATE TABLE IF NOT EXISTS nodes (
  id TEXT PRIMARY KEY,
  slug TEXT NOT NULL UNIQUE,
  business_name TEXT NOT NULL,
  category TEXT NOT NULL,
  whatsapp TEXT NOT NULL,
  description TEXT,
  address TEXT,
  promo TEXT,
  theme_id TEXT NOT NULL DEFAULT 'default',
  status TEXT NOT NULL DEFAULT 'draft',
  created_at INTEGER NOT NULL,
  updated_at INTEGER NOT NULL
);

CREATE INDEX IF NOT EXISTS idx_nodes_slug ON nodes(slug);
CREATE INDEX IF NOT EXISTS idx_nodes_category ON nodes(category);
CREATE INDEX IF NOT EXISTS idx_nodes_status ON nodes(status);

-- TABEL 2: NODE_IMAGES (Foto UMKM)
CREATE TABLE IF NOT EXISTS node_images (
  id TEXT PRIMARY KEY,
  node_id TEXT NOT NULL,
  slot TEXT NOT NULL,
  object_key TEXT NOT NULL,
  width INTEGER,
  height INTEGER,
  size_bytes INTEGER,
  mime_type TEXT NOT NULL,
  created_at INTEGER NOT NULL,
  FOREIGN KEY (node_id) REFERENCES nodes(id) ON DELETE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_node_images_node ON node_images(node_id);

-- TABEL 3: NODE_SOCIALS (Sosial Media)
CREATE TABLE IF NOT EXISTS node_socials (
  id TEXT PRIMARY KEY,
  node_id TEXT NOT NULL,
  platform TEXT NOT NULL,
  url TEXT NOT NULL,
  username TEXT,
  is_visible INTEGER DEFAULT 1,
  sort_order INTEGER DEFAULT 0,
  created_at INTEGER NOT NULL,
  FOREIGN KEY (node_id) REFERENCES nodes(id) ON DELETE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_node_socials_node ON node_socials(node_id);

-- TABEL 4: DOMAINS (Domain Mapping - untuk nanti)
CREATE TABLE IF NOT EXISTS domains (
  id TEXT PRIMARY KEY,
  node_id TEXT NOT NULL,
  hostname TEXT NOT NULL UNIQUE,
  type TEXT NOT NULL DEFAULT 'subdomain',
  is_primary INTEGER DEFAULT 1,
  created_at INTEGER NOT NULL,
  FOREIGN KEY (node_id) REFERENCES nodes(id) ON DELETE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_domains_hostname ON domains(hostname);
