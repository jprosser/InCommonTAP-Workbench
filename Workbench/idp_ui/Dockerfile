FROM i2incommon/shib-idp-ui:1.18.0

ARG CSPHOSTNAME=localhost
ENV CSPHOSTNAME=$CSPHOSTNAME

COPY container_files/idp_ui/application.yml /opt/shibui/
COPY container_files/idp_ui/shibui-test.p12 /opt/shibui/
COPY container_files/idp_ui/users.txt /opt/shibui/

RUN mkdir -p /opt/shibui/saml/
COPY container_files/idp_ui/samlcert.p12 /opt/shibui/saml/
COPY container_files/idp_ui/idp-metadata.xml /opt/shibui/saml/

COPY container_files/system/setservername.sh /usr/local/bin/
RUN chmod 755 /usr/local/bin/setservername.sh
RUN /usr/local/bin/setservername.sh
  
EXPOSE 8443
