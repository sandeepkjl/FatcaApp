FROM java:latest

ADD ./target/*.jar /usr/

RUN ["java","-jar" ,"/usr/fatca-app-0.0.1-SNAPSHOT.jar"]