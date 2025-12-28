# Use OpenJDK 17 as the base image
FROM amazoncorretto:21
# Set the maintainer label (optional)
LABEL maintainer="your-email@example.com"
# Add the JAR file to the container
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
# Expose the port your Spring Boot app runs on
EXPOSE 8761
# Define the entry point to run the application
ENTRYPOINT ["java", "-jar", "/app.jar"]