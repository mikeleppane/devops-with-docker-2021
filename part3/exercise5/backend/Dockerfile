FROM golang:1.16.7-alpine3.14

WORKDIR /go/src/app

ENV LC_ALL=C.UTF-8
ENV PATH="/usr/local/go/bin:${PATH}"
ENV REQUEST_ORIGIN=http://localhost:5000

COPY . .

RUN addgroup -S appuser && adduser -S appuser && \
    go build -ldflags="-s -w" -o server . && \
    chown appuser:appuser server

EXPOSE 8080

USER appuser

CMD ./server