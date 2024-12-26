From openjdk:17
Expose 8081
ADD target/spring_jenkins.jar spring_jenkins.jar
ENTRYPOINT ["java","-jar","/spring_jenkins.jar"]