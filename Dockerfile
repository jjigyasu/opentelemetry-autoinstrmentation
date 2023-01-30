FROM amazoncorretto:17-alpine3.15-jdk
RUN mkdir -m777 /etc/myapp
WORKDIR /etc/myapp
EXPOSE 8081

ADD target/rest-service-complete-0.0.2-SNAPSHOT.jar /etc/myapp
ADD opentelemetry-javaagent.jar /etc/myapp

ENTRYPOINT ["java","-javaagent:/etc/myapp/opentelemetry-javaagent.jar", "-jar", "/etc/myapp/rest-service-complete-0.0.2-SNAPSHOT.jar"]