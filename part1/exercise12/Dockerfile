FROM node:14

COPY package.json .

RUN npm install

RUN npm install -g serve

COPY . .

RUN npm run build

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]
