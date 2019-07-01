FROM node:alpine

WORKDIR /usr/app

COPY ./package.json ./
COPY ./package-lock.json ./
RUN npm install \
    && apk add --update \
    curl \
    && rm -rf /var/cache/apk/*

COPY ./ ./
CMD ["npm", "start"]