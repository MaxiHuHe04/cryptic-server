FROM maven:3.6.0-jdk-8-alpine

MAINTAINER faq@cryptic-game.net

EXPOSE 8080
EXPOSE 80
EXPOSE 1239

WORKDIR /app

ADD . /app/

RUN mvn clean install

CMD java -jar target/server-0.0.6-jar-with-dependencies.jar
