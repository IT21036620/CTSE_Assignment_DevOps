
FROM maven:3.8.4-openjdk-17 AS build
COPY . /app
WORKDIR /app
RUN mvn clean package -DskipTests

# Use a base image with Java pre-installed
FROM openjdk:17
# Set the working directory inside the container
WORKDIR /app


COPY --from=build /app/target/product-service-0.0.1-SNAPSHOT.jar /app/product-service.jar

# Copy the packaged JAR file into the container at defined working directory
COPY . .

ENV DB_PASSWORD=theanswer

# Expose the port that your Spring Boot application uses (default is 8080)
EXPOSE 8081

# Command to run your Spring Boot application when the container starts
CMD ["java", "-jar", "product-service.jar"]

