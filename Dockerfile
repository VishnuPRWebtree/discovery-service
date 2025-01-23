FROM eclipse-temurin:21-jre-jammy

LABEL maintainer="discovery-service"
LABEL version="${BUILD_NUMBER}"
LABEL description="Spring Boot Docker Discovery Demo Application"

WORKDIR /app
COPY target/discovery-service-0.0.1-SNAPSHOT.jar /app/discovery-service.jar
EXPOSE 8190
ENTRYPOINT ["java", "-jar", "discovery-service.jar"]