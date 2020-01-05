
FROM openjdk:8
EXPOSE 8080
ADD target/demo-0.0.1-SNAPSHOT.jar demo-0.0.1-SNAPSHOT.jar
CMD java -jar demo-0.0.1-SNAPSHOT.jar