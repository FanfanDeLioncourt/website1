FROM node:8.4

COPY package.json .
COPY package-lock.json .

RUN npm install

COPY . .

RUN npm run build

RUN npm -g install serve

EXPOSE 5000

CMD ["serve", "-s", "build"]
