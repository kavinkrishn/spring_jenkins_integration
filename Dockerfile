From openjdk:11
Expose 8080
ADD target/spring_jenkins.jar spring_jenkins.jar
ENTRYPOINT ["java","-jar","/spring_jenkins.jar"]