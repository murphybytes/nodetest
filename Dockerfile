FROM node:8.11.3-alpine
WORKDIR /app/

# A wildcard is used to ensure both package.json AND package-lock.json are copied where available (npm@5+)
COPY package*.json /app/
COPY ./bin /app/bin
COPY ./public /app/public
COPY ./routes /app/routes
COPY ./views /app/views
COPY ./app.js /app/
RUN apk add --update curl && npm install --production
