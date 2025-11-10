FROM n8nio/n8n:latest

WORKDIR /data

ENV DB_TYPE=postgresdb
ENV N8N_HOST=0.0.0.0
ENV NODE_ENV=production

CMD ["n8n", "start"]
