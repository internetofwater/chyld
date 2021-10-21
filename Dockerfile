FROM maven:3.6.3-jdk-8-slim AS builder
COPY . .
RUN cd /chyld-pilot && mvn package


FROM tomcat:8.5.40-jre8-alpine AS deploy
EXPOSE 8080 8443
COPY --from=builder /chyld-pilot/target/chyld-pilot.war /usr/local/tomcat/webapps/
