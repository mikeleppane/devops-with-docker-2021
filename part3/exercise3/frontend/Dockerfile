FROM node:14

RUN groupadd -r appuser && useradd -r -g appuser -m appuser

COPY package.json .

RUN npm install

RUN npm install -g serve

COPY . .

ENV REACT_APP_BACKEND_URL=http://127.0.0.1:8080

EXPOSE 5000

RUN npm run build

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]
