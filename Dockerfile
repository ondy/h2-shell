FROM adoptopenjdk/openjdk8:alpine-jre
LABEL maintainer="asiemer@gmx.de"

RUN mkdir -p /h2; \
  adduser -D -g '' h2-user; \
  chown h2-user /h2
USER h2-user
WORKDIR /h2

ENV JAR=http://repo2.maven.org/maven2/com/h2database/h2/1.4.199/h2-1.4.199.jar
RUN wget -O h2.jar $JAR

CMD ["java", "-cp", "h2.jar", "org.h2.tools.Shell"]
