FROM ubuntu:18.04

WORKDIR /app

ENV LC_ALL=C.UTF-8
ENV PATH="/opt/node-v14.17.6-linux-x64/bin:${PATH}"
ENV REACT_APP_BACKEND_URL=http://127.0.0.1:8080

COPY . .

RUN apt update && apt upgrade -y && \
    apt install -y curl gnupg ca-certificates && \
    curl -s https://nodejs.org/dist/v14.17.6/node-v14.17.6-linux-x64.tar.gz | tar -xzC /opt/ && \
    apt purge -y --auto-remove curl && \
    apt autoremove --purge && \
    apt clean && \
    rm -rf /var/lib/apt/lists/* && \
    groupadd -r appuser && useradd -r -g appuser -m appuser && \
    npm install && \
    npm install -g serve && \
    npm run build

EXPOSE 5000

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]
