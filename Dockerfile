FROM java:8u45-jdk

RUN apt-get update && apt-get install -y wget git curl zip && rm -rf /var/lib/apt/lists/*

ENV SPRING_HOME /var/spring_home

RUN mkdir /var/boot_jar

COPY app.jar /var/boot_jar/app.jar

CMD ["java", "-jar", "/var/boot_jar/app.jar"]
