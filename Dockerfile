FROM java

ADD ./target/*.jar /home/

EXPOSE 9097
CMD ["java -jar /home/fatca-app-0.0.1-SNAPSHOT.jar"]