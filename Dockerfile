FROM node:20.15-bullseye-slim
WORKDIR /app
COPY package*.json ./
COPY pm2.test.config.js ./pm2.config.js
RUN npm install --omit=dev
COPY src src
CMD npm run run && npm run logs