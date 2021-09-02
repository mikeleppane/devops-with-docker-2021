FROM node:14

COPY package.json .

RUN npm install

RUN npm install -g serve

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost/api

EXPOSE 5000

RUN npm run build

CMD ["serve", "-s", "-l", "5000", "build"]
