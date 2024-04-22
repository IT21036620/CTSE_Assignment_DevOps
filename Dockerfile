# Use a base image with Java pre-installed
FROM openjdk:17

# Set the working directory inside the container
WORKDIR /app

# Copy the packaged JAR file into the container at defined working directory
COPY . .

# Expose the port that your Spring Boot application uses (default is 8080)
EXPOSE 8081

# Command to run your Spring Boot application when the container starts
CMD ["java", "-jar", "product-service.jar"]

