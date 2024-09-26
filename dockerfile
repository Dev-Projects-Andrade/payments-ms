FROM node:21-alpine3.19

# Instalar pnpm
RUN npm install -g pnpm

WORKDIR /usr/src/app

COPY package.json pnpm-lock.yaml ./

# Realizamos instalaciones con pnpm
RUN pnpm install

COPY . .


EXPOSE 3003