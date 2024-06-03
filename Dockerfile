ARG NODE_VERSION=20.14.0

FROM node:${NODE_VERSION}-alpine

ENV NODE_ENV "${NODE_ENV}:/flare/src"


WORKDIR /flare

COPY . .

RUN npm install

CMD node .