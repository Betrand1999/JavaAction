# Use an official maven:3.8.4-openjdk-17-slim OpenJDK runtime as the base image
FROM maven:3.8.1-openjdk-17-slim

# Set the working directory
WORKDIR /app

# Copy the project's pom.xml file to the container
COPY pom.xml .

# Download the project dependencies
RUN mvn dependency:go-offline

# Copy the rest of the project files to the container
COPY src ./src

# Build the application using Maven
RUN mvn clean install

# Build the application
RUN mvn package

CMD ["java", "-jar", "target/MSB-0.0.1-SNAPSHOT.war"]

