FROM amazoncorretto:17

COPY test-0.0.1-SNAPSHOT.jar /app/test.jar

ENV APP_HOME /app
EXPOSE 8080
VOLUME /app/upload

WORKDIR $APP_HOME

ENTRYPOINT ["java","-jar","/app/test.jar"]