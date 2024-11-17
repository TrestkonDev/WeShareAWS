FROM amazoncorretto:17
WORKDIR /app
COPY target/weshare-mvc-exercise-1.0-SNAPSHOT-jar-with-dependencies.jar WeShare.jar
EXPOSE 80
ENV PORT=80
ENTRYPOINT ["java", "-jar", "WeShare.jar"]


CMD ["sh", "-c", "echo 'Starting WeShare on port 80...' && java -jar WeShare.jar 2>&1 | tee /proc/1/fd/1"]