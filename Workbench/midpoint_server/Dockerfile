#This file is no longer used.  As of midPoint version 4.8.3, we are using the native midpoint container from Evolveum.  See the docker-compose.yml file for additional clarity.
FROM i2incommon/midpoint:4.8.2

ARG CSPHOSTNAME=localhost
ENV CSPHOSTNAME=$CSPHOSTNAME

ENV MP_DIR /opt/midpoint
ENV MP_MEM_MAX 2048m
RUN mkdir ${MP_DIR}/csv
VOLUME ${MP_DIR}/var

COPY container_files/mp-home/ ${MP_DIR}/var/

#Shibb SP
COPY container_files/shibboleth/ /etc/shibboleth/
COPY container_files/httpd/00-shib.conf /etc/httpd/conf.modules.d/
COPY container_files/httpd/midpoint-shib.conf /etc/httpd/conf.d/
COPY container_files/httpd/vhosts.conf /etc/httpd/conf.d/vhosts/

#set dynamic hostname
COPY container_files/system/setservername.sh /usr/local/bin/
RUN chmod 755 /usr/local/bin/setservername.sh
#set hostname
RUN /usr/local/bin/setservername.sh
RUN yum install -y graphviz


