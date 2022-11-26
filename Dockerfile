# Multi staged build

# Stage 1: Build Stage
FROM node:14-alpine AS build_stage

WORKDIR /app

COPY . /app

RUN npm install
RUN npm run build

# Stage 2: Run with relevant(s)
FROM node:14-alpine AS final_stage

WORKDIR /app

COPY --from=build_stage /app/build ./build

RUN npm install -g serve

CMD serve -s build