# --- Dockerfile for n8n on Render ---
FROM n8nio/n8n:latest

# Set environment variables directly in container
ENV DB_TYPE=postgresdb
ENV DB_POSTGRESDB_URL=postgresql://n8n_bxpw_user:aminty@123weQ45637@dpg-d3i8ihidbo4c73fh3ne0-a.singapore-postgres.render.com:5432/n8n_bxpw?sslmode=require
ENV N8N_PORT=5678
ENV N8N_ENCRYPTION_KEY=bd9510cdd9a9aa9a32583b17f880f3fb
ENV N8N_HOST=0.0.0.0
ENV NODE_ENV=production

WORKDIR /data
EXPOSE 5678
CMD ["n8n", "start"]
