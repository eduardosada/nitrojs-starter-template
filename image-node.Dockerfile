FROM node:16-alpine

ENV NODE_ENV=production
ENV NITRO_PRESET=node-server

RUN mkdir /app

WORKDIR /app

COPY package*.json ./

RUN npm ci --silent --omit=dev && npm cache verify

COPY . .

RUN npm run build

EXPOSE 9000

CMD ["npm", "start"]