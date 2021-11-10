FROM alpine:3.14.2
WORKDIR /app

RUN apk add --no-cache nodejs npm

COPY package.json ./
RUN npm install

COPY . ./
