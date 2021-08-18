FROM node:14.17-slim

LABEL maintainer="matheusalencar99@gmail.com" author="Matheus Alencar"

RUN mkdir /usr/app

COPY package.json /usr/app/

WORKDIR /usr/app

RUN npm install

COPY . /usr/app/

EXPOSE 4000

CMD ["node", "server.js"]


