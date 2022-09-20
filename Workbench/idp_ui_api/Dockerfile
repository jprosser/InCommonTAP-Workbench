FROM i2incommon/shib-idp-ui:1.13.2

ARG CSPHOSTNAME=localhost
ENV CSPHOSTNAME=$CSPHOSTNAME

COPY container_files/idp_ui/application.yml /opt/shibui/
COPY container_files/idp_ui/shibui-test.p12 /opt/shibui/
COPY container_files/idp_ui/users.txt /opt/shibui/

EXPOSE 8443
