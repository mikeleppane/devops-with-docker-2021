FROM node:14.17.6-alpine3.14

WORKDIR /app

ENV LC_ALL=C.UTF-8
ENV PATH="/opt/node-v14.17.6-linux-x64/bin:${PATH}"
ENV REACT_APP_BACKEND_URL=http://127.0.0.1:8080

COPY . .

RUN addgroup -S appuser && adduser -S appuser && \
    npm install && \
    npm install -g serve && \
    npm run build

EXPOSE 5000

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]
