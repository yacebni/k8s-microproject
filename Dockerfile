FROM node:22

WORKDIR /app

COPY package*.json ./

RUN npm install

RUN apt-get update && apt-get install -y curl

COPY . .

EXPOSE 3000

CMD ["node", "app.js"]