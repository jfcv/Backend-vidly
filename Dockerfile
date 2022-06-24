FROM node:14.16.0-alpine3.13

RUN apk add --no-cache python3 py3-pip

WORKDIR /app
COPY package.json ./app
RUN npm install
COPY . .

EXPOSE 3900

CMD ["npm", "start"]
