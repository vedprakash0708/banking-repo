FROM openjdk:17
EXPOSE 8081
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar","--server.address=0.0.0.0"]
