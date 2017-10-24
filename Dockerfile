FROM node:41
MAINTAINER phyxkal <haikalvidya@gmail.com>

RUN mkdir -p /usr/src/webapp

WORKDIR /usr/src/webapp
COPY package.json /usr/src/webapp
RUN npm install

COPY . /usr/srv/webapp

ENV NODE_ENV=production
EXPOSE 1337
CMD [ "npm", "start" ]
