FROM n8n:latest
LABEL "language"="nodejs"
LABEL "framework"="n8n"

ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV NODE_ENV=production
ENV WEBHOOK_URL=https://${DOMAIN_NAME}

WORKDIR /home/node/.n8n

EXPOSE 5678

CMD ["n8n", "start"]
