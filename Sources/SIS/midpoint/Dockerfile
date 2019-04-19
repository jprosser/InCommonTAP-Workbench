FROM centos:7

RUN yum -y update; yum clean all;
RUN yum -y install epel-release; yum clean all

RUN yum -y install \
    java-1.8.0-openjdk-headless \
    tomcat \
    unzip

RUN curl -k https://evolveum.com/downloads/midpoint/3.6/midpoint-3.6-dist.tar.gz -o midpoint-3.6-dist.tar.gz

RUN tar -xvf midpoint-3.6-dist.tar.gz -C /opt/

RUN cp /opt/midpoint-3.6/war/midpoint.war /var/lib/tomcat/webapps/

ENV MIDPOINT_HOME=/var/lib/midpoint
RUN mkdir /var/lib/midpoint

COPY keystore.jceks /var/lib/midpoint/keystore.jceks
COPY config.xml /var/lib/midpoint/config.xml
COPY server.xml /etc/tomcat/server.xml
COPY keystore /root/.keystore

ENV JAVA_OPTS="-Dmidpoint.home=$MIDPOINT_HOME -Djavax.net.ssl.trustStore=$MIDPOINT_HOME/keystore.jceks -Djavax.net.ssl.trustStoreType=jceks -server -Xms512m -Xmx2048m"

EXPOSE 8080
EXPOSE 8443

CMD ["usr/libexec/tomcat/server", "start"]
