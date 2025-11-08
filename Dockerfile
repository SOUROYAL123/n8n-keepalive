# --- Dockerfile for n8n on Render ---
FROM n8nio/n8n:latest

WORKDIR /data

# Force environment setup inside the image
ENV DB_TYPE=postgresdb
ENV DB_POSTGRESDB_URL=postgresql://n8n_bxpw_user:aminty@123weQ45637@dpg-d3i8ihidbo4c73fh3ne0-a.singapore-postgres.render.com:5432/n8n_bxpw?sslmode=require
ENV N8N_PORT=5678
ENV N8N_HOST=0.0.0.0
ENV NODE_ENV=production

# Use shell form to start n8n directly
CMD n8n start
