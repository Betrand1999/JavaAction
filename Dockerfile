# Use an official OpenJDK runtime as the base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Spring Boot JAR file into the container
COPY target/MSB-0.0.1-SNAPSHOT.war /app/MSB-0.0.1-SNAPSHOT.war

EXPOSE 80
# Run the Spring Boot application
CMD ["java", "-jar", "MSB-0.0.1-SNAPSHOT.war"]