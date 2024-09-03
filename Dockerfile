# Base image with JDK installed
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /devops-java

# Copy the JAR file from your host to the container
COPY target/spring-boot-hello-world-main.jar /devops-java//spring-boot-hello-world-main.jar

# Command to run the JAR file
CMD ["java", "-jar", "spring-boot-hello-world-main.jar"]