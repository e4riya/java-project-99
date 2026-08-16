FROM eclipse-temurin:21-jdk

WORKDIR /app

COPY . .

RUN chmod +x gradlew && ./gradlew bootJar --no-daemon

CMD ["java", "-jar", "build/libs/app-0.0.1-SNAPSHOT.jar"]
