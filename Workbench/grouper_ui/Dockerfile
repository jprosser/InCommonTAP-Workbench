FROM i2incommon/grouper:4.7.0

LABEL author="tier-packaging@internet2.edu <tier-packaging@internet2.edu>"

ARG CSPHOSTNAME=localhost
ENV CSPHOSTNAME=$CSPHOSTNAME
ENV GROUPER_UI_CONFIGURATION_EDITOR_SOURCEIPADDRESSES='0.0.0.0/0'

RUN yum -y update
RUN yum -y install netcat

COPY container_files/shibboleth/idp-metadata.xml /etc/shibboleth/

COPY container_files/system/setservername.sh /usr/local/bin/
RUN chmod 755 /usr/local/bin/setservername.sh

#set hostname
RUN /usr/local/bin/setservername.sh

CMD ["ui"]
