FROM golang:1.16

WORKDIR /go/src/app

RUN groupadd -r appuser && useradd -r -g appuser -m appuser

COPY --chown=appuser:appuser . .

RUN go build -o server .

EXPOSE 8080

ENV REQUEST_ORIGIN=http://localhost:5000

RUN chown appuser:appuser server

USER appuser

CMD ./server