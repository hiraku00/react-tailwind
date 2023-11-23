# FROM node:18.18.2-alpine
# WORKDIR /app
# RUN npm install -g npm@latest && npm install -g vite@latest

# # tailwindcss
# RUN npm install -D tailwindcss
# RUN npx tailwindcss init

FROM node:18.18.2-alpine
WORKDIR /app
COPY ./app/package*.json ./
RUN npm install -g npm@latest && npm install -g vite@latest
RUN npm install
COPY ./app .
RUN npx tailwindcss init
