FROM node:14-alpine

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 8000

CMD [ "node", "auth-app.js" ]
