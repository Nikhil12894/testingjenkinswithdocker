# FROM openjdk:8-jdk-alpine
# EXPOSE 8080
# ADD target/demo-0.0.1-SNAPSHOT.jar app.jar
# ENTRYPOINT ["java", "-jar", "app.jar"]
FROM maven:3.6.0-jdk-13

RUN useradd -m -u 1000 -s /bin/bash jenkins

RUN yum install -y openssh-clients
