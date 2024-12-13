FROM openjdk:17-jdk-alpine

# Set working directory inside the container
WORKDIR /demo-ci-cd

# Copy the entire project to the container
COPY . .

# Build argument for the JAR file
ARG JAR_FILE=target/*.jar

# Copy the JAR file to a fixed location in the container
RUN cp ${JAR_FILE} demo.jar

# Expose the application port
EXPOSE 8080

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "demo.jar"]
