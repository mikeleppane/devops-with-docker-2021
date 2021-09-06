FROM ubuntu:18.04

WORKDIR /go/src/app

ENV LC_ALL=C.UTF-8
ENV PATH="/usr/local/go/bin:${PATH}"
ENV REQUEST_ORIGIN=http://localhost:5000

COPY . .

RUN apt update && apt upgrade -y && \
    apt install -y wget && \
    wget -c https://golang.org/dl/go1.16.7.linux-amd64.tar.gz && \
    rm -rf /usr/local/go && tar -C /usr/local -xzf go1.16.7.linux-amd64.tar.gz && \
    rm go1.16.7.linux-amd64.tar.gz && \
    apt purge -y --auto-remove wget && \
    apt autoremove --purge && \
    apt clean && \
    rm -rf /var/lib/apt/lists/* && \
    groupadd -r appuser && useradd -r -g appuser -m appuser && \
    go build -ldflags="-s -w" -o server . && \
    rm -rf /usr/local/go && \
    chown appuser:appuser server

EXPOSE 8080

USER appuser

CMD ./server