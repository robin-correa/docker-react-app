FROM node:18.14.0-alpine
# RUN addgroup app && adduser -S -G app app
# USER app
WORKDIR /app
COPY package*.json .

# Note: RUN is for build time
RUN npm install

COPY . .

ENV API_URL=http://api.myapp.com/
EXPOSE 3000

# Note: CMD is for runtime
CMD ["npm,", "start"]