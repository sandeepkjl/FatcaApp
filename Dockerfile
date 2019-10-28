FROM java:latest

CMD java -cp target/*/*.jar /usr/

RUN ["java","-jar" ,"/usr/*.jar"]