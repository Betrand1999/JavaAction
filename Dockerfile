# Use the official OpenJDK 17 image as the base
FROM openjdk:17-jdk-slim

# Install additional packages needed for Maven
RUN apt-get update && \
    apt-get install -y curl && \
    rm -rf /var/lib/apt/lists/*

# Set environment variables
ENV MAVEN_VERSION 3.8.4

# Install Maven
RUN curl -fsSL https://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz | tar xvz -C /opt && \
    ln -s /opt/apache-maven-$MAVEN_VERSION /opt/maven && \
    ln -s /opt/maven/bin/mvn /usr/local/bin && \
    apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/*

# Set Maven home and add it to PATH
ENV MAVEN_HOME /opt/maven
ENV PATH $MAVEN_HOME/bin:$PATH

# Set the working directory
WORKDIR /app

# Copy the Maven project files into the container
COPY target/MSB-0.0.1-SNAPSHOT.war /app/MSB-0.0.1-SNAPSHOT.war
COPY pom.xml .
COPY src ./src

# Build the application using Maven

RUN mvn clean install -U

# Specify the default command to run when the container starts
EXPOSE 80
# Run the Spring Boot application
CMD ["java", "-jar", "MSB-0.0.1-SNAPSHOT.war"]

