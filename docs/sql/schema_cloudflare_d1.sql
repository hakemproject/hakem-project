CREATE TABLE IF NOT EXISTS sites (
    id TEXT PRIMARY KEY,
    slug TEXT NOT NULL UNIQUE,
    business_name TEXT NOT NULL,
    category TEXT NOT NULL,
    whatsapp TEXT NOT NULL,
    headline TEXT NOT NULL,
    description TEXT,
    address TEXT,
    theme_id TEXT NOT NULL DEFAULT 'pedas',
    status TEXT NOT NULL DEFAULT 'published',
    created_at INTEGER NOT NULL,
    updated_at INTEGER NOT NULL
);
