FROM golang:1.16.7-alpine3.14 AS builder

WORKDIR /go/src/app

ENV LC_ALL=C.UTF-8
ENV REQUEST_ORIGIN=http://localhost:5000
ENV USER=appuser

COPY . .

RUN addgroup -S appuser && adduser -S appuser && \
    export CGO_ENABLED=0 && go build -ldflags="-s -w" -o server . && \
    chown appuser:appuser server

FROM scratch

COPY --from=builder /etc/passwd /etc/passwd
COPY --from=builder /etc/group /etc/group
COPY --from=builder /go/src/app/server .

EXPOSE 8080

USER appuser:appuser

ENTRYPOINT ["./server"]