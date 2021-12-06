FROM maven:3.8.3-openjdk-17

COPY ./backend/pom.xml /project/backend/pom.xml

RUN  cd /project/backend && mvn verify clean --fail-never

COPY ./backend /project/backend

RUN  cd /project/backend && mvn clean install -DskipTests=true

EXPOSE 8181

ENTRYPOINT ["java", "--enable-preview", "-jar", "/project/backend/snapshot/stackjudge-snapshot.jar"]
