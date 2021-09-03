FROM ubuntu:20.04

RUN apt update && apt upgrade -y
RUN apt install -y git apt-transport-https ca-certificates curl gnupg lsb-release
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
RUN echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
RUN apt update
RUN apt install -y docker-ce-cli

WORKDIR /app

COPY docker_publisher.sh .

VOLUME /var/run/docker.sock:/var/run/docker.sock

CMD ["./docker_publisher.sh"]
