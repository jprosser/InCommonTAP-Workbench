FROM tier/grouper:2.4.0-a96-u57-w11-p12-20200324-rc1

LABEL author="tier-packaging@internet2.edu <tier-packaging@internet2.edu>"

ARG CSPHOSTNAME=localhost
ENV CSPHOSTNAME=$CSPHOSTNAME

RUN yum -y update

COPY container_files/shibboleth/idp-metadata.xml /etc/shibboleth/

COPY container_files/system/setservername.sh /usr/local/bin/
RUN chmod 755 /usr/local/bin/setservername.sh

#set hostname
RUN /usr/local/bin/setservername.sh

CMD ["ui"]
