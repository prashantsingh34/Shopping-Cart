FROM node:alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]

# FROM node:alpine AS build
# WORKDIR /app
# COPY . .
# RUN npm install && npm run build

# FROM nginx:alpine
# COPY --from=build /app/build /usr/share/nginx/html
# EXPOSE 80
# ENTRYPOINT ["nginx"]
# CMD ["-g","daemon off;"]
