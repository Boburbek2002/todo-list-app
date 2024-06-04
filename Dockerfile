FROM node:17-alpine
WORKDIR /app
COPY package.json .
RUN npm install ajv-formats --save
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
