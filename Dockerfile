FROM java

ADD ./target/*.jar /


CMD java -jar fatca-app-0.0.1-SNAPSHOT.jar