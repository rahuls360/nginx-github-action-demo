FROM node:16-alpine as build

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

COPY . .

RUN npm run build

# preprare nginx
FROM nginx:1.21.6-alpine

WORKDIR /app

COPY --from=build /app/build /usr/share/nginx/html
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx/nginx.conf /etc/nginx/conf.d

# start nginx
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
