FROM openjdk:8

COPY material-applications/spring-example-project .

RUN ./mvnw package

CMD ["java", "-jar", "target/docker-example-1.1.3.jar"]