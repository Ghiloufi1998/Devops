FROM openjdk
EXPOSE 8089
ADD target/achat-1.0.jar achat-1.0.jar
ENTRYPOINT ["java","-jar","/achat-1.0-s7.jar"]
