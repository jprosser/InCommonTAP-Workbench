FROM tier/shib-idp:latest

LABEL author="tier-packaging@internet2.edu <tier-packaging@internet2.edu>"

ARG CSPHOSTNAME=localhost
ENV CSPHOSTNAME=$CSPHOSTNAME

COPY shibboleth-idp/ /opt/shibboleth-idp/

COPY container_files/system/setservername.sh /usr/local/bin/
RUN chmod 755 /usr/local/bin/setservername.sh

#set hostname
RUN /usr/local/bin/setservername.sh
