#Use OpenJDK
FROM openjdk:8-jdk-alpine

#Add a volume pointing to /tmp
VOLUME /tmp

#Expose http port
EXPOSE 8100

#The application's jar file
ARG JAR_File=target/validator-java.jar

#Add the jar file to container
ADD ${JAR_File} S.jar

#Entrypoint
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/S.jar"]

