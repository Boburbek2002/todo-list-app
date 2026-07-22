FROM node:17-alpine
WORKDIR /app
ENV CHOKIDAR_USEPOLLING=true
ENV WATCHPACK_POLLING=true
COPY package*.json .
RUN npm install ajv-formats --save
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
