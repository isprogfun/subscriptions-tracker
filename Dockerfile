FROM eclipse-temurin:17-jdk-focal

RUN addgroup --system spring && adduser --system spring && adduser spring spring
USER spring:spring

WORKDIR /app

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
