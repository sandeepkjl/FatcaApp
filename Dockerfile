FROM java:latest

ADD ./target/*.jar /usr/

RUN ["java","-jar" ,"/usr/*.jar"]