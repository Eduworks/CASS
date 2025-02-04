FROM node:20.18.2-bullseye-slim
WORKDIR /app
COPY package*.json ./
RUN npm install --omit=dev
COPY src src
ENTRYPOINT ["node","src/main/server.js"]