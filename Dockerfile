FROM node:14-alpine

ADD . /usr/src/app
WORKDIR /usr/src/app

RUN yarn

COPY . .

RUN yarn build
RUN yarn add pm2 -g

CMD [ "yarn", "start" ]