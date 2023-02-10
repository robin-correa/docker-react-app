FROM node:18.14.0-alpine
WORKDIR /app
COPY . .
RUN npm install