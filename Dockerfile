FROM maven:3.6.3-jdk-11-slim AS build
FROM openjdk:11
EXPOSE 9000
WORKDIR /demo_service
COPY . /demo_service
ADD target/DemoTest-0.0.1-SNAPSHOT.jar  DemoTest-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar", "target/DemoTest-0.0.1-SNAPSHOT.jar"]