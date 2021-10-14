FROM node:16

EXPOSE 1337

WORKDIR /srv/app

VOLUME [ "/srv/data" ]

COPY . /srv/app/

RUN npm install

RUN npm run build

CMD [ "npm", "run", "start" ]