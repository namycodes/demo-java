FROM openjdk:17-jdk-alpine
COPY . /demo-ci-cd
WORKDIR /demo-ci-cd
ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} demo.jar

ENTRYPOINT ["java", "-jar", "/demo.jar"]

EXPOSE 8080