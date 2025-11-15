FROM node:18

WORKDIR /app

COPY ../app/package*.json ./
RUN npm install

COPY ../app .

ENV PORT=8080
EXPOSE 8080

CMD ["node", "server.js"]
