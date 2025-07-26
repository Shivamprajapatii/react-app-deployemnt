FROM node:20-alpine

WORKDIR /react-app

COPY ./package.json ./package.json
COPY ./package-lock.json ./package-lock.json

COPY . .

RUN  npm install

EXPOSE 5173

CMD ["npm","run", "dev"]