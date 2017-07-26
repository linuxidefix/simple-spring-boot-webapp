FROM openjdk:8-jdk

EXPOSE 8080
EXPOSE 8443

ENV JAVA_OPTS=""

ADD target/mywebapp-0.0.1.jar app.jar
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]
