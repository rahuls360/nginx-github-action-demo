FROM node:16

WORKDIR /app

COPY . .

EXPOSE 3001

CMD ["yarn", "start"]