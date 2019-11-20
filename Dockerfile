FROM java

ADD ./target/*.jar /

EXPOSE 9097
CMD ["java -jar fatca-app-0.0.1-SNAPSHOT.jar"]