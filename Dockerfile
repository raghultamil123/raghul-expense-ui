FROM node:current-alpine3.15
WORKDIR /workspace/app

COPY package.json ./
COPY package-lock.json ./

RUN npm install --silent

COPY . ./
ENTRYPOINT ["npm","start"]
