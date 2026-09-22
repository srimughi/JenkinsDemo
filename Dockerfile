FROM eclipse-temurin:25-jdk

WORKDIR /app

COPY Jenkins.java .

RUN javac Jenkins.java

CMD ["java", "Jenkins"]