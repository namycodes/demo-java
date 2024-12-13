FROM openjdk:17-jdk-alpine

# Set working directory inside the container
WORKDIR /demo-ci-cd

# Copy the entire project to the container
COPY . .

# Build argument for the JAR file
ARG JAR_FILE=target/demo-ci-cd-1.0-SNAPSHOT.jar

# Copy the JAR file to a fixed location in the container
RUN cp ${JAR_FILE} demo.jar

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "demo.jar"]
