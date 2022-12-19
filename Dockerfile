FROM node:10


WORKDIR /usr/src/app
COPY . .
COPY package*.json ./

RUN npm install
RUN npm run build

EXPOSE 3000
CMD [ "npm", "run", "start" ]