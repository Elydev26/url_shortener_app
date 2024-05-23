FROM node:16.20-bullseye-slim

COPY . .
WORKDIR /app

RUN ["yarn", "install"]

EXPOSE 3000

CMD ["yarn", "run", "start:dev"]
