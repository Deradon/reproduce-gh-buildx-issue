FROM alpine:3.14.2
WORKDIR /app

RUN apk add --no-cache nodejs npm

COPY package.json ./
RUN npm install
RUN cp -R /app/node_modules /app/foo && cp -R /app/node_modules /app/bar && cp -R /app/node_modules /app/baz

COPY . ./
