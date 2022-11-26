# Using light weight base image

FROM node:14-alpine

WORKDIR /app

COPY . /app

RUN npm install -g serve
RUN npm install
RUN npm run build

CMD serve -s build