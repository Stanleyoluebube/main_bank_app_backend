# Use the khipu/openjdk17-alpine base image
FROM khipu/openjdk17-alpine

# Set the working directory inside the container.
WORKDIR /app

# Copy the pom.xml and any other necessary files for building the application
COPY pom.xml /app/pom.xml

# Copy the source code into the container
COPY src /app/src

# Install Maven (if not already included in the base image)
RUN apk add --no-cache maven

# Package the application using Maven
# RUN mvn clean package -DskipTests
RUN mvn clean install -DskipTests

# Run the application
CMD ["java", "-jar", "target/online-banking-system-0.0.1-SNAPSHOT.jar"]











# FROM maven:3.9.6-eclipse-temurin-17 AS build

# WORKDIR /app

# COPY pom.xml .
# RUN mvn dependency:go-offline

# COPY src ./src

# RUN mvn clean package -DskipTests

# FROM eclipse-temurin:17-jdk-alpine

# WORKDIR /app

# COPY --from=build /app/target/*.jar app.jar

# CMD ["java", "-jar", "app.jar"]