# Usa a imagem oficial do n8n pronta
FROM n8nio/n8n:latest

# Define variáveis básicas
ENV N8N_PORT=5678
ENV N8N_HOST=0.0.0.0
ENV NODE_ENV=production
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Define diretório e permissões
WORKDIR /home/node
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

USER node
EXPOSE 5678

# Comando de inicialização
CMD ["n8n", "start"]
