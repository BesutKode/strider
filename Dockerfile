FROM node:4.1
MAINTAINER phyxkal <haikalvidya@gmail.com>

RUN mkdir -p /usr/src/webapp

WORKDIR /usr/src/webapp
COPY package.json yarn.lock ./
RUN npm install

COPY . /usr/srv/webapp

ENV NODE_ENV=production
EXPOSE 1337
CMD [ "npm", "start" ]
