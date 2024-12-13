FROM alpine

ARG JAR_FILE=target/*.jar

WORKDIR /opt/app

COPY ${JAR_FILE} demo.jar

ENTRYPOINT ["java", "-jar", "demo.jar"]