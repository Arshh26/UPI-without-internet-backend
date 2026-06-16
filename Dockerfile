# Use Java 17 base image
FROM eclipse-temurin:17-jdk

# Set working directory inside container
WORKDIR /app

# Copy project files
COPY . .

# Build the JAR using Maven wrapper (skip tests for faster build)
RUN ./mvnw clean package -DskipTests

# Run the packaged JAR
CMD ["java", "-jar", "target/upi-offline-mesh-0.0.1-SNAPSHOT.jar"]

