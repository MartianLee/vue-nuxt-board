FROM node:8

ADD . /usr/src/app
WORKDIR /usr/src/app

#RUN npm install -g vue-cli --silent
RUN npm install --silent

EXPOSE 3000
