# Builder
FROM node:14.17.6-alpine3.14 AS builder

WORKDIR /app

ENV LC_ALL=C.UTF-8
ENV REACT_APP_BACKEND_URL=http://127.0.0.1:8080

COPY . .

RUN npm install && \
    npm run build

EXPOSE 5000

# Runtime
FROM nginx:1.21.1-alpine

COPY --from=builder /app/build /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]