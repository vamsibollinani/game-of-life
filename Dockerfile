FROM tomcat

MAINTAINER vamsi2techie@gmail.com

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat


WORKDIR /opt/tomcat/webapps
RUN curl -O -L http://52.24.124.105:8081/nexus/content/repositories/releases/com/vamsi/gameoflife/gameoflife/$BUILD_NUMBER/gameoflife-$BUILD_NUMBER.war

EXPOSE 9090
