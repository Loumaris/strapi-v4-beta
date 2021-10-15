FROM node:16

EXPOSE 1337

WORKDIR /srv/app

ADD /bin/docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]

CMD [ "npm", "run", "develop" ]