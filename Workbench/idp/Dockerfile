FROM tier/shib-idp:latest

LABEL author="tier-packaging@internet2.edu <tier-packaging@internet2.edu>"

ARG CSPHOSTNAME=localhost
ENV CSPHOSTNAME=$CSPHOSTNAME

COPY shibboleth-idp/ /opt/shibboleth-idp/
#rather than copying metadata files included in above folder and including in config, instead upload these files to the IdP UI
#  API info here: https://documenter.getpostman.com/view/446764/TzzHmCkn


RUN mkdir -p /opt/shibboleth-idp/metadata/generated && mkdir -p /opt/shibboleth-idp/conf/generated

COPY container_files/idp/shibui-metadata-providers.xml /opt/shibboleth-idp/conf/generated/

COPY container_files/system/setservername.sh /usr/local/bin/
RUN chmod 755 /usr/local/bin/setservername.sh

#set hostname
RUN /usr/local/bin/setservername.sh
