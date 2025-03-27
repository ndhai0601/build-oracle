FROM node:18

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install

COPY . .

EXPOSE ${PORT}
CMD ["sh", "-c", "node index.js"]
