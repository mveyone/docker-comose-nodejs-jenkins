FROM node:10

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PW=password

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 40000


CMD ["npm", "start"]