FROM alpine

ARG JAR_FILE=/home/runner/work/demo-java/demo-java/target/*.jar

COPY ${JAR_FILE} demo.jar

ENTRYPOINT ["java", "-jar", "/demo.jar"]

EXPOSE 8080