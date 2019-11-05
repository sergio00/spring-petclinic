
FROM maven:3.5-jdk-8
# Add Maintainer Info
LABEL maintainer="slsergioxavier@gmail.com"

RUN mkdir -p /deploy/application

VOLUME ["/deploy/application"]

WORKDIR /deploy/application

ADD . .

ENTRYPOINT ["mvn","clean","package"]

