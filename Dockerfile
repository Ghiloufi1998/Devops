
FROM maven:3.8.3-jdk-11 AS builder

# Configuration de l'environnement de construction
WORKDIR /app
COPY target/achat-1.0.jar achat-1.0.jar
RUN --mount=type=cache,target=/root/.m2 mvn dependency:go-offline

# Copie du code source et compilation de l'application
COPY src/ src/
RUN --mount=type=cache,target=/root/.m2 mvn package
