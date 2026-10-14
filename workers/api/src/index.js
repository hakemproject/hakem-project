// ==============================================
// MYNADI API - Worker Backend
// ==============================================

export default {
  async fetch(request, env, ctx) {
    const url = new URL(request.url);
    const path = url.pathname;
    const method = request.method;

    // CORS headers untuk development
    const corsHeaders = {
      "Access-Control-Allow-Origin": "*",
      "Access-Control-Allow-Methods": "GET, POST, PUT, DELETE, OPTIONS",
      "Access-Control-Allow-Headers": "Content-Type",
    };

    // Handle preflight request
    if (method === "OPTIONS") {
      return new Response(null, { headers: corsHeaders });
    }

    try {
      // ============================================
      // ROUTE 1: Health Check
      // ============================================
      if (path === "/api/health" && method === "GET") {
        return jsonResponse({
          status: "ok",
          service: "mynadi-api",
          environment: env.ENVIRONMENT,
          timestamp: new Date().toISOString(),
        }, corsHeaders);
      }

      // ============================================
      // ROUTE 2: POST /api/nodes - Buat Node Baru
      // ============================================
      if (path === "/api/nodes" && method === "POST") {
        const body = await request.json();

        // Validasi input
        const required = ["slug", "business_name", "category", "whatsapp"];
        for (const field of required) {
          if (!body[field]) {
            return jsonResponse({
              error: `Field '${field}' wajib diisi`,
            }, corsHeaders, 400);
          }
        }

        // Cek apakah slug sudah dipakai
        const existing = await env.mynadi_db
          .prepare("SELECT id FROM nodes WHERE slug = ?")
          .bind(body.slug)
          .first();

        if (existing) {
          return jsonResponse({
            error: `Slug '${body.slug}' sudah dipakai`,
          }, corsHeaders, 409);
        }

        // Insert ke database
        const id = crypto.randomUUID();
        const now = Date.now();

        await env.mynadi_db
          .prepare(`
            INSERT INTO nodes (id, slug, business_name, category, whatsapp, description, address, promo, theme_id, status, created_at, updated_at)
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
          `)
          .bind(
            id,
            body.slug,
            body.business_name,
            body.category,
            body.whatsapp,
            body.description || null,
            body.address || null,
            body.promo || null,
            body.theme_id || "default",
            body.status || "draft",
            now,
            now
          )
          .run();

        return jsonResponse({
          success: true,
          node: {
            id,
            slug: body.slug,
            business_name: body.business_name,
            status: body.status || "draft",
          },
          url: `https://mynadi.pages.dev/s/${body.slug}`,
        }, corsHeaders, 201);
      }

      // ============================================
      // ROUTE 3: GET /api/nodes/:slug - Ambil Node
      // ============================================
      if (path.startsWith("/api/nodes/") && method === "GET") {
        const slug = path.replace("/api/nodes/", "");

        const node = await env.mynadi_db
          .prepare("SELECT * FROM nodes WHERE slug = ?")
          .bind(slug)
          .first();

        if (!node) {
          return jsonResponse({ error: "Node tidak ditemukan" }, corsHeaders, 404);
        }

        // Ambil images dan socials
        const images = await env.mynadi_db
          .prepare("SELECT * FROM node_images WHERE node_id = ?")
          .bind(node.id)
          .all();

        const socials = await env.mynadi_db
          .prepare("SELECT * FROM node_socials WHERE node_id = ?")
          .bind(node.id)
          .all();

        return jsonResponse({
          success: true,
          node,
          images: images.results,
          socials: socials.results,
        }, corsHeaders);
      }

      // ============================================
      // ROUTE 4: PUT /api/nodes/:slug - Update Node
      // ============================================
      if (path.startsWith("/api/nodes/") && method === "PUT") {
        const slug = path.replace("/api/nodes/", "");
        const body = await request.json();
        const now = Date.now();

        const result = await env.mynadi_db
          .prepare(`
            UPDATE nodes
            SET business_name = COALESCE(?, business_name),
                category = COALESCE(?, category),
                whatsapp = COALESCE(?, whatsapp),
                description = COALESCE(?, description),
                address = COALESCE(?, address),
                promo = COALESCE(?, promo),
                theme_id = COALESCE(?, theme_id),
                status = COALESCE(?, status),
                updated_at = ?
            WHERE slug = ?
          `)
          .bind(
            body.business_name || null,
            body.category || null,
            body.whatsapp || null,
            body.description || null,
            body.address || null,
            body.promo || null,
            body.theme_id || null,
            body.status || null,
            now,
            slug
          )
          .run();

        if (result.meta.changes === 0) {
          return jsonResponse({ error: "Node tidak ditemukan" }, corsHeaders, 404);
        }

        return jsonResponse({
          success: true,
          message: "Node berhasil diupdate",
        }, corsHeaders);
      }

      // ============================================
      // ROUTE 5: DELETE /api/nodes/:slug - Hapus Node
      // ============================================
      if (path.startsWith("/api/nodes/") && method === "DELETE") {
        const slug = path.replace("/api/nodes/", "");

        const result = await env.mynadi_db
          .prepare("DELETE FROM nodes WHERE slug = ?")
          .bind(slug)
          .run();

        if (result.meta.changes === 0) {
          return jsonResponse({ error: "Node tidak ditemukan" }, corsHeaders, 404);
        }

        return jsonResponse({
          success: true,
          message: "Node berhasil dihapus",
        }, corsHeaders);
      }

      // ============================================
      // ROUTE DEFAULT: 404
      // ============================================
      return jsonResponse({
        error: "Endpoint tidak ditemukan",
        available_endpoints: [
          "GET /api/health",
          "POST /api/nodes",
          "GET /api/nodes/:slug",
          "PUT /api/nodes/:slug",
          "DELETE /api/nodes/:slug",
        ],
      }, corsHeaders, 404);

    } catch (error) {
      return jsonResponse({
        error: "Internal Server Error",
        message: error.message,
      }, corsHeaders, 500);
    }
  },
};

// Helper function
function jsonResponse(data, corsHeaders, status = 200) {
  return new Response(JSON.stringify(data, null, 2), {
    status,
    headers: {
      "Content-Type": "application/json",
      ...corsHeaders,
    },
  });
}