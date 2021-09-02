FROM golang:1.16

WORKDIR /go/src/app

COPY . .

RUN go build .

EXPOSE 8080

ENV REQUEST_ORIGIN=http://localhost:5000

CMD ./server