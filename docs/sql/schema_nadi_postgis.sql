CREATE EXTENSION IF NOT EXISTS postgis;

CREATE TABLE IF NOT EXISTS nadi_nodes (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    node_code VARCHAR(32) UNIQUE NOT NULL,
    name VARCHAR(255) NOT NULL,
    category VARCHAR(50) NOT NULL,
    whatsapp_number VARCHAR(20) NOT NULL,
    address_text TEXT NOT NULL,
    location GEOGRAPHY(POINT, 4326) NOT NULL,
    is_online BOOLEAN DEFAULT true,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_nadi_nodes_spatial ON nadi_nodes USING GIST (location);

CREATE OR REPLACE FUNCTION search_nadi_radius(
    user_lat DOUBLE PRECISION,
    user_lng DOUBLE PRECISION,
    target_category VARCHAR,
    radius_meters INT DEFAULT 2000
)
RETURNS TABLE (
    id UUID, name VARCHAR, whatsapp_number VARCHAR, address_text TEXT, distance_meters DOUBLE PRECISION
) AS $$
BEGIN
    RETURN QUERY
    SELECT n.id, n.name, n.whatsapp_number, n.address_text,
           ST_Distance(n.location, ST_SetSRID(ST_MakePoint(user_lng, user_lat), 4326)::geography) AS distance_meters
    FROM nadi_nodes n
    WHERE n.is_online = true
      AND (target_category IS NULL OR n.category = target_category)
      AND ST_DWithin(n.location, ST_SetSRID(ST_MakePoint(user_lng, user_lat), 4326)::geography, radius_meters)
    ORDER BY distance_meters ASC LIMIT 25;
END;
$$ LANGUAGE plpgsql;
