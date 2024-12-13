FROM openjdk:17-jdk-alpine

WORKDIR .
ARG JAR_FILE=target/demo-ci-cd-1.0-SNAPSHOT.jar

COPY ${JAR_FILE} demo.jar

ENTRYPOINT ["java", "-jar", "/demo.jar"]

EXPOSE 8080