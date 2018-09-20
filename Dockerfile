FROM node:8.11.3-alpine
WORKDIR /app/

COPY package*.json /app/
COPY ./bin /app/bin
COPY ./public /app/public
COPY ./routes /app/routes
COPY ./views /app/views
COPY ./app.js /app/
RUN apk add --update curl && npm install --production
