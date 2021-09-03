### Building images inside of a container

Created a simple bash script which clones a project from Github (by default it uses an example
project simple-web-service [Link](https://github.com/docker-hy/material-applications/tree/main/simple-web-service)),
builds the Dockerfile in the project root and, lastly, publishes it into Dockerhub 
([Project page in DockerHub](https://hub.docker.com/repository/docker/mikkolep/devops-with-docker-part3-ex2))

In addition, exercise root contains Dockerfile which executes this inside a container.

### Used Commands
1. Build 
    - docker build . -t docker_pub
2. Execute
    - docker run -it -v /var/run/docker.sock:/var/run/docker.sock --env DOCKER_USER=$DOCKER_USER --env DOCKER_PASS=$DOCKER_PASS docker_pub
   
Note: DOCKER_USER and DOCKER_PASS needs to be set before trying to run the container; export DOCKER_USER=username, 
export DOCKER_PASS=my_password

