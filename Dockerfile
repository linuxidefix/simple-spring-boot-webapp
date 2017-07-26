FROM linuxidefix/simple-spring-boot-webapp:dummy

ADD target/mywebapp-0.0.1.jar app.jar
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]
