# Stage 1: Build the application
FROM maven:3.8.8-openjdk-17 AS builder
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Stage 2: Run the application
FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=builder /app/target/spring_jenkins.jar spring_jenkins.jar
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "/app/spring_jenkins.jar"]

