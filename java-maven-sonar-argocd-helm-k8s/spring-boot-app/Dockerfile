# You can change this base image to anything else
# But make sure to use the correct version of Java
FROM adoptopenjdk/openjdk11:alpine-jre

# Simply the artifact path
ARG artifact=target/spring-boot-web.jar

WORKDIR /opt/app

COPY ${artifact} app.jar

RUN apt-get update &&
    apt-get install -y docker.io

# This should not be changed
ENTRYPOINT ["java","-jar","app.jar"]
