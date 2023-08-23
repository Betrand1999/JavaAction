# Use an official maven:3.8.4-openjdk-17-slim OpenJDK runtime as the base image
FROM maven:3.8.4-openjdk-17-slim


# Set the working directory
WORKDIR /app

# Copy the Maven project files into the container
COPY target/MSB-0.0.1-SNAPSHOT.war /app/target/MSB-0.0.1-SNAPSHOT.war
COPY pom.xml .
COPY src ./src

# Build the application using Maven

RUN mvn clean install -U

# Specify the default command to run when the container starts
EXPOSE 80
# Run the Spring Boot application
CMD ["java", "-jar", "target/MSB-0.0.1-SNAPSHOT.war"]

