FROM eclipse-temurin:11-jre-alpine

EXPOSE 8080

ADD build/libs/testing-web-0.0.1-SNAPSHOT.jar /app/testing-web-0.0.1-SNAPSHOT.jar
ADD jmx/PerformanceTesting.jmx /app/PerformanceTesting.jmx

WORKDIR /app

CMD java -jar testing-web-0.0.1-SNAPSHOT.jar
