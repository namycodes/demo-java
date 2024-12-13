# Start with the base image
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /demo-ci-cd

# Copy the JAR file from the build context into the container
COPY target/demo-ci-cd-1.0-SNAPSHOT.jar app.jar
# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
