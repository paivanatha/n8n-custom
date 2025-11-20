FROM n8nio/n8n:latest

USER root

# Atualiza índice de pacotes e instala o poppler-utils (onde vem o pdftocairo)
RUN apk update && apk add --no-cache poppler-utils \
    && ls -l /usr/bin/pdftocairo || echo "pdftocairo not found in /usr/bin"

USER node

