FROM java:8u111-jre-alpine


ADD build/libs/inventory-service-*.jar /work/app.jar

ENTRYPOINT ["java -jar /work/app.jar"]