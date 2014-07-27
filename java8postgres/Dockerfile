FROM ubuntu:14.04
MAINTAINER Warren Mira <warrenmira@gmail.com>

RUN apt-get update
RUN apt-get -y install software-properties-common python-software-properties
#java repo
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update

#license
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
#install java8
RUN apt-get -y install oracle-java8-installer 
#install postgresql
RUN apt-get -y install postgresql postgresql-contrib

#install postgresql

EXPOSE 8080

 
