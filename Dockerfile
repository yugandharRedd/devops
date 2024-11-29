# Use an official OpenJDK runtime as the base image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/hello-world-1.0-SNAPSHOT.jar /app/hello-world-1.0-SNAPSHOT.jar

# Expose the port your app runs on (optional, specify your app's port)
EXPOSE 8080

# Define the command to run the JAR file
CMD ["java", "-jar", "/app/hello-world-1.0-SNAPSHOT.jar"]

