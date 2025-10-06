# Use a Java 17 base image
FROM eclipse-temurin:17-jdk-jammy

# Set working directory
WORKDIR /app

# Copy the jar built by Maven
COPY target/student-management-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your Spring Boot app runs on
EXPOSE 8080

# Run the jar
ENTRYPOINT ["java","-jar","/app/app.jar"]
