FROM node:14-slim

USER root
RUN apt-get update && \
  apt-get install -y \
    libx11-6 libx11-xcb1 libxcomposite1 libxcursor1 \
    libxdamage1 libxi6 libxtst6 libglib2.0-0 libcups2 \
    libxrandr2 libasound2 libatk1.0-0 libgdk-pixbuf2.0-0 \
    libpango-1.0-0 libpangocairo-1.0-0 libgtk-3-0 libnss3 libxss1 && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /app && chown -R node:node /app
WORKDIR /app

USER node

ENV PATH=/app/node_modules/.bin:$PATH

RUN npm install fast-cli

CMD ["fast", "--upload", "--single-line"]
