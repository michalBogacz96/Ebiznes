FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
	openjdk-8-jdk

ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64	


RUN apt-get update && apt-get install -y \
    unzip \
    vim \
    git \
    wget \
    curl


RUN wget http://www.scala-lang.org/files/archive/scala-2.12.8.deb && \
    dpkg -i scala-2.12.8.deb &&\
    apt-get update &&\
    apt-get install scala	

RUN \
  curl -L -o sbt-1.4.8.deb https://dl.bintray.com/sbt/debian/sbt-1.4.8.deb && \
  dpkg -i sbt-1.4.8.deb && \
  apt-get update && \
  apt-get install -y sbt


RUN apt-get install -y npm && npm install -g npm@latest


EXPOSE 8000
EXPOSE 8080
EXPOSE 9000
EXPOSE 5000
EXPOSE 8888

VOLUME /c/private/E-biznes/dockerproject
