FROM maven:3.8.4-jdk-8

WORKDIR /usr/src/poc
COPY pom.xml .
RUN mvn package
COPY . .
RUN mvn package

# set this to disable the exploit
#ENV LOG4J_FORMAT_MSG_NO_LOOKUPS=true
ENV SECRET_VALUE='if you can read this this code is vulnerable'
CMD ["java", "-jar", "/usr/src/poc/target/log4j-rce-1.0-SNAPSHOT-jar-with-dependencies.jar"]
#CMD ["java", "-Dlog4j.formatMsgNoLookups=true", "-jar", "/usr/src/poc/target/log4j-rce-1.0-SNAPSHOT-jar-with-dependencies.jar"]
