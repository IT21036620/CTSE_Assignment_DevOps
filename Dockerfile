# Use a base image with Java pre-installed
FROM openjdk:17

# Set the working directory inside the container
WORKDIR /app

# Copy the packaged JAR file into the container at defined working directory
COPY target/your-spring-boot-app.jar /app/your-spring-boot-app.jar

# Expose the port that your Spring Boot application uses (default is 8080)
EXPOSE 8080

# Command to run your Spring Boot application when the container starts
CMD ["java", "-jar", "your-spring-boot-app.jar"]
