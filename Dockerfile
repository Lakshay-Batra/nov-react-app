# 4 Multi staged build with a light weight server image

FROM node:14-alpine AS build_stage

WORKDIR /app

COPY . /app

RUN npm install
RUN npm run build

FROM nginx:stable-alpine

COPY --from=build_stage /app/build /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]